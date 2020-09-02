--[[
questManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Collection of quests
]]--


local Colour = require 'system.colour'
local QuestMarker = require 'game.gameWorld.quests.questMarker'
local Locale = require 'system.locale'
local Utils = require 'system.utils'
local JSON = require 'libs.JSON'

local love = love
local g = love.graphics


local QuestManager = {}
QuestManager.__index = QuestManager

-- local function forward declaration
local addQuest, removeQuest, incrementRule, loadSavedQuests, saveQuest, compare
local lessThan, lessOrEquals, greaterThan, greaterOrEquals, equals, notEquals

-- constants
local QUESTS_DIR = 'res/quests/'


function QuestManager.create(gameStates)
 --     print("CREATING Quest Manager")  -- DEBUG_TAG

    local self = setmetatable({}, QuestManager)

    self.gameStates = gameStates
    self.quests = {}
    self.activeQuests = {}
    self.hide = false

    self.gameVariables = nil
    self.triggers = nil

    -- used to activate the centre popup
    self.newQuestQueue = {}

    -- data structure
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

function QuestManager:load(worldId)
 --     print("LOADING Quest Manager")  -- DEBUG_TAG

    self.gameVariables = self.gameStates:getGameVariables()
    self.triggers = self.gameStates:getDialogueTriggers()

    -- Load all the quests in this worldId
    local path = QUESTS_DIR .. worldId .. '/'
    for _, questFile in pairs(Utils.getFileTree(path)) do
        local quest = love.filesystem.load(path .. questFile)()
        table.insert(self.quests, quest)
    end
    -- Load saved quests and update progress
    loadSavedQuests(self)
    -- Create list of open quests
    for _, quest in ipairs(self.quests) do
        if quest.cRule > 0 then
            table.insert(self.activeQuests, quest)
        end
    end
    -- Quest marker image
    self.uiElements = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    local tileX, tileY = 112, 26
    self.w, self.h = 27, 35
    self.questQuad = g.newQuad(tileX, tileY, self.w, self.h, Utils.getSize(self.uiElements))
end

function QuestManager:update(dt)
    if not self.hide then
        for _, quest in ipairs(self.activeQuests) do
            if quest.marker then
                quest.marker:update(dt)
            end
        end
    end
end

function QuestManager:draw()
    if not self.hide then
        for _,quest in ipairs(self.activeQuests) do
            if quest.marker then
                quest.marker:draw(self.uiElements, self.questQuad)
            end
        end
    end
end

-- Public -------------------------------------------------------------------------------

function QuestManager:checkQuestEvent(animate, trigger)
    for _, quest in ipairs(self.activeQuests) do
        local rule = quest.rules[quest.cRule]
        local condition = rule.condition
        if rule.ruleType == "event" then
            if trigger then
                if (condition.a == trigger or condition.b == trigger) then
                    -- check type
                    if compare(self, condition.cond, condition.a, condition.b) then
                        incrementRule(self, quest, animate)
                    end
                end
            else
                if compare(self, condition.cond, condition.a, condition.b) then
                    incrementRule(self, quest, animate)
                end
            end
        end
    end
end

function QuestManager:checkQuestDialogue(key)
    for _, quest in ipairs(self.activeQuests) do
        local rule = quest.rules[quest.cRule]
        if rule.ruleType == "dialogue" and
           rule.condition == key then
            incrementRule(self, quest, true)
        end
    end
end

function QuestManager:save()
    -- Track quests
    local info = self:getQuestInfo()
    local data = JSON:encode({ completed = #info.completeQuests, total = #self.quests})
    Utils.trackDataJSON("kanoOverworld-quests-completed", "quests", data)
end

function QuestManager:isQuestActive(id, x, y)
    for _, quest in ipairs(self.activeQuests) do
        if quest.id == id and quest.cRule > 0 then
            -- Add marker
            if quest.marker == nil then
                local marker = QuestMarker.create(id)
                marker:activate(x, y, self.w, self.h)
                quest.marker = marker
            end
            return true, quest.cRule
        end
    end
    return false, -1
end

function QuestManager:resetMarkers()
    self.hide = false
    for _, quest in ipairs(self.activeQuests) do
        quest.marker = nil
    end
end

function QuestManager:hideMarkers(hide)
    self.hide = hide
end

function QuestManager:getQuestInfo()
    local completed = {}
    -- Calculate completed quests
    for _, quest in ipairs(self.quests) do
        if quest.cRule == 0 then
            completed[#completed + 1] = quest
        end
    end
    return {
        activeQuests = self.activeQuests,
        total = #self.quests,
        completeQuests = completed
    }
end

function QuestManager:addMapID(questId, mapId)
    -- All quests
    for _, quest in ipairs(self.quests) do
        if quest.id == questId then
            quest.mapId = mapId
        end
    end
    -- Active quests
    for _, quest in ipairs(self.activeQuests) do
        if quest.id == questId then
            quest.mapId = mapId
        end
    end
end

function QuestManager:getOperators()
    return self.operators
end

function QuestManager:getQuests()
    return self.quests
end

function QuestManager:checkUnlocked()
    local safeGuardIter = 10

    while next(self.newQuestQueue) and safeGuardIter > 0 do
        local newQuest = table.remove(self.newQuestQueue, 1)
        self.gameStates:activateCentrePopUp(
            "quest", Locale.text("newQuest"), Locale.text(newQuest.title)
        )
        self.gameStates.uiManager:setNewQuest(true)
        safeGuardIter = safeGuardIter - 1
    end
end

-- Private ------------------------------------------------------------------------------

function loadSavedQuests(self)
    local savedQuests = g_resMngr:getSaveData().quests
    if savedQuests then
        -- Iterate through saved quests
        for _, questSaved in ipairs(savedQuests) do
            -- Find the quest
            for _, quest in ipairs(self.quests) do
                if questSaved.id == quest.id then
                    quest.cRule = questSaved.cRule
                    break
                end
            end
        end
    -- we are saving quests for the first time
    else
        g_resMngr:getSaveData().quests = {}
    end

    -- set the game variable status for all quests
    for _, quest in ipairs(self.quests) do
--[[
        if Utils.getArgs()['--complete-quests'] then  -- DEBUG_TAG_START
            quest.cRule = 0
            saveQuest(self, quest)
        end                                           -- DEBUG_TAG_END
--]]

        self.gameVariables:set(quest.id, quest.cRule, false)
    end
end

function saveQuest(self, quest)
    -- Iterate through all the quests
    for _, q in ipairs(self.quests) do
        if quest.id == q.id then
            q.cRule = quest.cRule
        end
    end
    -- Iterate through saved quests
    local found = false
    local savedQuests = g_resMngr:getSaveData().quests
    for _, q in ipairs(savedQuests) do
        if quest.id == q.id then
            q.cRule = quest.cRule
            found = true
            break
        end
    end
    -- The quest is new, save it for the first time
    if not found then
        table.insert(g_resMngr:getSaveData().quests, {id = quest.id, cRule = quest.cRule})
    end
end

function removeQuest(self, id)
    for i, quest in ipairs(self.activeQuests) do
        if quest.id == id then
            table.remove(self.activeQuests, i)
            return
        end
    end
end

function addQuest(self, unlocks)
    -- Interate through all the quests
    for _, quest in ipairs(self.quests) do
        -- Iterate through the list of quests to unlock
        for _, unlock in ipairs(unlocks) do
            -- Have we found the quest
            if quest.id == unlock and quest.cRule == -1 then
                -- Set the quest as active
                quest.cRule = 1
                table.insert(self.activeQuests, quest)
                -- store the newQuest for the popup
                table.insert(self.newQuestQueue, {title = quest.title})
                -- Save
                saveQuest(self, quest)
            end
        end
    end
end

function incrementRule(self, quest, animate)
    -- Have we completed the quest?
    if quest.cRule == #quest.rules then
        if animate then
            local text = Locale.text(quest.title) .. "\n" ..Locale.text("questComplete")
            self.gameStates:activateBottomRightPopUp(text, Colour.GREEN_BRIGHT)
        end
        -- Set the quest as completed
        quest.cRule = 0
        -- Remove quest from active quest
        removeQuest(self, quest.id)
        -- Activate new quest?
        if #quest.unlocks > 0 then
            addQuest(self, quest.unlocks)
            -- activate new quests in the same map. We check for animate to avoid
            -- problems when checking for event quests at load
            if animate then
                self.gameStates:activateQuestsInMap()
            end
        end
        -- Track quest completed
        Utils.trackAction("kano-overworld-quest-completed")
    -- Move on to the next rule
    else
        if animate then
            local text = Locale.text(quest.title) .. "\n"
            text = text .. Locale.textWithArg("stepComplete", quest.cRule, #quest.rules)
            self.gameStates:activateBottomRightPopUp(text)
        end
        quest.cRule = quest.cRule + 1
        -- check if we might need to increment again
        self:checkQuestEvent(animate)
    end
    -- Save
    saveQuest(self, quest)
    -- set the game variable status for this quest
    self.gameVariables:set(quest.id, quest.cRule)
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


return QuestManager
