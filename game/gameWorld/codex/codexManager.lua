--[[
codexManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Manager for the Codex elements in the game.

It mainly has two arrays for locked and unlocked elements. Locked ones will be new
elements, ones that have yet to have their rule met. Unlocked elements have had their
rule met and have went into the savefile.

Note that if the rule changes with an update, elements will potentially be removed
from the savefile and thus become locked.
]]--


local Locale = require 'system.locale'
local Utils = require 'system.utils'
local JSON = require 'libs.JSON'

local love = love
local f = love.filesystem
local g = love.graphics

local match = string.match
local lower = string.lower


local CodexManager = {}
CodexManager.__index = CodexManager

-- local function forward declaration
local loadSavedElements, dialogueQuestRuleBackwardsCompat, incrementRule, filterElements
local compare, lessThan, lessOrEquals, greaterThan, greaterOrEquals, equals, notEquals
 -- local unlockAllElements  -- DEBUG_TAG

-- constants
local CODEX_PATH = 'res/codex/codex.lua'


function CodexManager.create(gameStates)
 --     print("CREATING Codex Manager")  -- DEBUG_TAG

    local self = setmetatable({}, CodexManager)

    self.gameStates = gameStates

    -- array of codexElement tables from res
    self.elements = {}
    self.numUnlocked = 0
    self.tileset = nil

    -- search functionality
    self.filter = ''
    self.filteredElements = nil

    -- references
    self.gameVariables = nil
    self.triggers = nil

    -- popup functionality
    self.discoveredElement = nil

    -- operators used in the comparator for an event ruleType
    self.operators = {
        ['lessThan'] = lessThan,
        ['lessOrEquals'] = lessOrEquals,
        ['greaterThan'] = greaterThan,
        ['greaterOrEquals'] = greaterOrEquals,
        ['equals'] = equals,
        ['notEquals'] = notEquals,
    }

    return self
end

function CodexManager:load(quests)
 --     print("LOADING Codex Manager")  -- DEBUG_TAG

    self.gameVariables = self.gameStates:getGameVariables()
    self.triggers = self.gameStates:getDialogueTriggers()

    -- load all the codex elements
    self.elements = f.load(CODEX_PATH)()

    -- set the unlocked status for all elements
    loadSavedElements(self, quests)

    -- load quads for each element
    self.tileset = g_resMngr.images[g_resMngr.CODEX_ELEMENTS]
    local tilesetW, tilesetH = self.tileset:getWidth(), self.tileset:getHeight()
    local tileW, tileH = 16, 16  -- codex element icon size
    local tilesX = tilesetW / tileW
    local tilesY = tilesetH / tileH
    local c = 1
    local rowTile = 0
    local colTile = 0
    for _ = 1, tilesY do
        for _ = 1, tilesX do
            if not self.elements[c] then
                return
            end
            self.elements[c].quad = g.newQuad(
                colTile, rowTile, tileW, tileH, tilesetW, tilesetH
            )
            colTile = colTile + tileW
            c = c + 1
        end
        colTile = 0
        rowTile = rowTile + tileH
    end
end

-- Public -------------------------------------------------------------------------------

function CodexManager:checkEvent(animate, trigger)
    local condition
    for _, element in ipairs(self.elements) do
        if not element.unlocked and element.rule.ruleType == "event" then
            condition = element.rule.condition
            if trigger then
                if (condition.a == trigger or condition.b == trigger) then
                    if compare(self, condition.cond, condition.a, condition.b) then
                        incrementRule(self, element, animate)
                    end
                end
            else
                if compare(self, condition.cond, condition.a, condition.b) then
                    incrementRule(self, element, animate)
                end
            end
        end
    end
end

function CodexManager:checkDialogue(key)
    for _, element in ipairs(self.elements) do
        if not element.unlocked and
           element.rule.ruleType == "dialogue" and element.rule.condition == key then
            incrementRule(self, element, true)
        end
    end
end

function CodexManager:save()
    -- Track unlocked codex items
    local data = JSON:encode({ unlocked = self.numUnlocked, total = #self.elements})
    Utils.trackDataJSON("kano-overworld-codex-items-unlocked", "codex-items", data)
end

function CodexManager:getElements()
    return self.filteredElements or self.elements
end

function CodexManager:getProgress()
    return self.numUnlocked, #self.elements
end

function CodexManager:setFilter(filter)
    self.filter = string.lower(filter)
    filterElements(self)
end

function CodexManager:setElementIsNew(idx, isNew)
    self.elements[idx].isNew = isNew
end

function CodexManager:getOperators()
    return self.operators
end

function CodexManager:checkElementDiscovered()
    if self.discoveredElement then
        -- launch centre popup
        self.gameStates:activateCentrePopUp(
            "codex", Locale.text('codexDiscovery'),
            Locale.text(self.discoveredElement.name), self.discoveredElement.quad,
            self.tileset
        )
        self.gameStates.uiManager:setNewCodex(true)
        -- reset discovered element
        self.discoveredElement = nil
    end
end

-- Private ------------------------------------------------------------------------------

function loadSavedElements(self, quests)
    local savedElements = g_resMngr:getSaveData().codexElements

    -- for testing purposes
 --     if unlockAllElements(self) then return end  -- DEBUG_TAG

    -- loading for the first time
    if not savedElements then
        g_resMngr:getSaveData().codexElements = {}
        dialogueQuestRuleBackwardsCompat(self, quests)
        return
    end

    -- set un/locked status of elements (will be either true or nil)
    for _, element in ipairs(self.elements) do
        element.unlocked = savedElements[element.id]

        -- set the game variable status for this element
        self.gameVariables:set(element.id, element.unlocked, false)

        if element.unlocked then
            self.numUnlocked = self.numUnlocked + 1
        end
    end
end

function filterElements(self)
    if self.filter == '' then
        self.filteredElements = nil
    else
        self.filteredElements = {}
        for _, element in ipairs(self.elements) do
            if element.unlocked and
               (match(lower(Locale.text(element.name)), self.filter) or
                match(lower(Locale.text(element.description)), self.filter)) then

                table.insert(self.filteredElements, element)
            end
        end
    end
end

function incrementRule(self, element, animate)
    -- element was already unlocked
    if element.unlocked or g_resMngr:getSaveData().codexElements[element.id] then
        return
    end

    -- on boot, the game does not animate these popups, during gameplay it does
    if animate then
        self.discoveredElement = {}
        self.discoveredElement.name = element.name
        self.discoveredElement.quad = element.quad
    end

    -- unlock element and update progress
    element.unlocked = true
    element.isNew = true
    self.numUnlocked = self.numUnlocked + 1
    self.gameVariables:set(element.id, element.unlocked)

    -- track codex element unlocked
    Utils.trackAction("kano-overworld-codex-item-unlocked")

    -- progressively save
    g_resMngr:getSaveData().codexElements[element.id] = element.unlocked
end

function compare(self, operator, a, b)
    -- replace operands with engine variables from triggers or arguments
    if type(a) == 'string' then
        a = self.triggers:get(a) or self.gameVariables:get(a)
    end
    if type(b) == 'string' then
        b = self.triggers:get(b) or self.gameVariables:get(b)
    end

    return self.operators[operator](a, b)
end

function lessThan(a, b)
    return a < b
end

function lessOrEquals(a, b)
    return a <= b
end

function greaterThan(a, b)
    return a > b
end

function greaterOrEquals(a, b)
    return a >= b
end

function equals(a, b)
    return a == b
end

function notEquals(a, b)
    return a ~= b
end

function dialogueQuestRuleBackwardsCompat(self, quests)
    local savedQuests = g_resMngr:getSaveData().quests
    if savedQuests then
        -- Iterate through saved quests
        for _, questSaved in ipairs(savedQuests) do
            -- Find the quest
            for _, quest in ipairs(quests) do
                if questSaved.id == quest.id then
                    -- check if a dialogue rule unlocks a codex element
                    for cRule, rule in ipairs(quest.rules) do
                        if cRule == quest.cRule then
                            break
                        end
                        if rule.ruleType == 'dialogue' then
                            self:checkDialogue(rule.condition)
                        end
                    end
                    break
                end
            end
        end
    end
end

--[[
function unlockAllElements(self)  -- DEBUG_TAG_START
    if Utils.getArgs()['--unlock-codex'] then
        g_resMngr:getSaveData().codexElements = {}

        for _, element in ipairs(self.elements) do
            incrementRule(self, element, false)
        end

        return true
    end
    return false
end   -- DEBUG_TAG_END
--]]


return CodexManager
