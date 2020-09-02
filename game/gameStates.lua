--[[
gameStates.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Manages all the states in the game
]]--


local GameVariables = require 'game.gameVariables'
local GameManager = require 'game.gameWorld.gameManager'
local QuestManager = require 'game.gameWorld.quests.questManager'
local CodexManager = require 'game.gameWorld.codex.codexManager'
local UiManager = require 'game.ui.uiManager'
local ProfileManager = require 'system.profileManager'
local Utils = require 'system.utils'

local love = love
local g = love.graphics


local GameStates = {}
GameStates.__index = GameStates


function GameStates.create()
 --     print("CREATING Game States")  -- DEBUG_TAG

    local self = setmetatable({}, GameStates)

    -- Constant state
    self.STATE_CLOSING = 1
    self.STATE_SPLASH = 2
    self.STATE_INGAME = 3
    self.STATE_ANIMATION = 4
    self.STATE_MENU = 5
    self.STATE_LAUNCH = 6
    -- Create states
    self.gameStates = {}
    self.currentState = nil
    self.uiManager = UiManager.create(self)
    self.gameManager = GameManager.create()
    self.gameVariables = GameVariables.create(self)
    self.profileManager = ProfileManager.create()
    self.questManager = QuestManager.create(self)
    self.codexManager = CodexManager.create(self)

    return self
end

function GameStates:preload()
 --     print("PRE LOADING Game States")  -- DEBUG_TAG

    -- deal with overscan
    local overscan = Utils.getOverscan()
    local width, height = g.getDimensions()
    g.translate(overscan.left, overscan.top)
    g.scale(
        (width - overscan.left - overscan.right) / width,
        (height - overscan.top - overscan.bottom) / height
    )
    g.push()

    self.uiManager:preload()
    -- Set first state to SPLASH SCREEN
    self:changeState(self.STATE_SPLASH)
end

function GameStates:load()
 --     print("LOADING Game States")  -- DEBUG_TAG

    self.profileManager:load()
    self.gameVariables:load()
    self.uiManager:load()
    self.questManager:load(self.gameManager:getWorldId())
    self.codexManager:load(self.questManager:getQuests())
    self.gameManager:load()

    self.questManager:checkQuestEvent(false)
    self.codexManager:checkEvent(false)

    -- collect garbage after loading all the assets in the game
    collectgarbage('collect')
end

function GameStates:update(dt)
    self.uiManager:update(dt)
    if self.currentState == self.STATE_INGAME then
        self.gameManager:update(dt)
        self.questManager:update(dt)
    end
end

function GameStates:draw()
    if self.currentState > self.STATE_SPLASH then
        self.gameManager:draw()
        self.questManager:draw()
    end
    self.uiManager:draw()
end

function GameStates:save(overrideMap)
    self.gameManager:save(overrideMap)
    self.profileManager:save()
    self.questManager:save()
    self.codexManager:save()
end

function GameStates:changeState(state)
    self.currentState = state
end

function GameStates:getProfile()
    return self.profileManager
end

function GameStates:getDialogueTriggers()
    return self.gameManager:getDialogueTriggers()
end

function GameStates:isClosing()
    return self.currentState == self.STATE_CLOSING
end

function GameStates:isMenu()
    return self.currentState == self.STATE_MENU
end

-- GameVariables ------------------------------------------------------------------------

function GameStates:getGameVariables()
    return self.gameVariables
end

function GameStates:setDiscoveredVariable()
    local percentage = self.uiManager:getPercentageVisited()
    self.gameVariables:set('MAPS_DISCOVERED', percentage)
end

function GameStates:incrementTrigger(trigger)
    self.gameManager:incrementTrigger(trigger)
end

-- GameManager --------------------------------------------------------------------------

function GameStates:initGame()
    self.gameManager:init()
end

function GameStates:changeMap(map)
    self.questManager:resetMarkers()
    self.gameManager:changeMap(map)
end

function GameStates:launchApp(cmd)
    self.gameManager.launchApp(cmd)
end

function GameStates:getPlayerPos()
    return self.gameManager:getPlayerPos()
end

function GameStates:getMapManager()
    return self.gameManager:getMapManager()
end

function GameStates:activateQuestsInMap()
    self.gameManager:activateQuestsInMap()
end

function GameStates:checkEvolutionEvent()
    self.gameManager:checkEvolutionEvent()
end

-- QuestManager -------------------------------------------------------------------------

function GameStates:checkQuestEvent(event, value, animate)
    self.questManager:checkQuestEvent(event, value, animate)
end

function GameStates:checkQuestDialogue(key)
    self.questManager:checkQuestDialogue(key)
end

function GameStates:isQuestActive(id, x, y)
    return self.questManager:isQuestActive(id, x, y)
end

function GameStates:resetQuestMarkers()
    self.questManager:resetMarkers()
end

function GameStates:hideQuestMarkers(hide)
    self.questManager:hideMarkers(hide)
end

function GameStates:getQuestInfo()
    return self.questManager:getQuestInfo()
end

function GameStates:questAddMapID(questId, mapId)
    self.questManager:addMapID(questId, mapId)
end

function GameStates:checkQuestUnlocked()
    self.questManager:checkUnlocked()
end

-- CodexManager -------------------------------------------------------------------------

function GameStates:checkCodexEvent(event, value, animate)
    self.codexManager:checkEvent(event, value, animate)
end

function GameStates:checkCodexDialogue(key)
    self.codexManager:checkDialogue(key)
end

function GameStates:setCodexFilter(filter)
    self.codexManager:setFilter(filter)
end

function GameStates:getCodexElements()
    return self.codexManager:getElements()
end

function GameStates:getCodexProgress()
    return self.codexManager:getProgress()
end

function GameStates:setCodexElementIsNew(idx, isNew)
    self.codexManager:setElementIsNew(idx, isNew)
end

function GameStates:checkCodexElementDiscovered()
    self.codexManager:checkElementDiscovered()
end

-- UiManager ----------------------------------------------------------------------------

function GameStates:activateMenu()
    self.uiManager:activateMenu()
end

function GameStates:activateDialog(type, ...)
    self.uiManager:activateDialog(type, ...)
end

function GameStates:activateLoading(command)
    self.uiManager:activateLoading(command)
end

function GameStates:activateAnimation(type, ...)
    self.uiManager:activateAnimation(type, ...)
end

function GameStates:activateBottomRightPopUp(text, colour)
    self.uiManager:activateBottomRightPopUp(text, colour)
end

function GameStates:activateCentrePopUp(image, title, body, quad)
    self.uiManager:activateCentrePopUp(image, title, body, quad)
end

function GameStates:hasAreaBeenVisited(name, visitedMaps)
    return self.uiManager:hasAreaBeenVisited(name, visitedMaps)
end

-- Input --------------------------------------------------------------------------------

function GameStates:keyreleased(key)
    self:controls(true, key, nil, false, nil, nil)
end

function GameStates:keypressed(key)
    self:controls(false, key, nil, false, nil, nil)
end

function GameStates:mousereleased(_, _, mousebutton)
    self:controls(true, nil, mousebutton, false, nil, nil)
end

function GameStates:mousepressed(_, _, mousebutton)
    self:controls(false, nil, mousebutton, false, nil, nil)
end

function GameStates:touchpressed(_, x, y)
    self:controls(false, nil, nil, x, y)
end

function GameStates:controls(isReleased, key, mousebutton, touchX, touchY)
    if self.currentState == self.STATE_INGAME then
        self.gameManager:controls(isReleased, key, mousebutton)  -- , touchX, touchY
    end
    self.uiManager:controls(isReleased, key, mousebutton, touchX, touchY)
end


return GameStates
