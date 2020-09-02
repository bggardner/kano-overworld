--[[
uiManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Manages all the UI elements
]]--


local SplashScreen = require 'game.ui.splashScreen'
local Menu = require 'game.ui.menu.menu'
local IngameUI = require 'game.ui.HUD.ingameUI'
local AnimationUI = require 'game.ui.animation.animationUI'
local Utils = require 'system.utils'

local love = love

local UiManager = {}
UiManager.__index = UiManager


function UiManager.create(gameStates)
 --     print("CREATING UI Manager")  -- DEBUG_TAG

    local self = setmetatable({}, UiManager)

    self.gameStates = gameStates
    self.newQuest = false
    self.newCodex = false

    -- Constant states
    self.STATE_SPLASH_SCREEN = 1
    self.STATE_CLOSING = 2
    self.STATE_ANIMATION = 3
    self.STATE_GAMEUI = 4
    self.STATE_MENU = 5

    -- Create states
    self.uiStates = {}
    self.currentState = nil
    self.uiStates[self.STATE_SPLASH_SCREEN] = SplashScreen.create()
    self.uiStates[self.STATE_ANIMATION] = AnimationUI.create(gameStates, self)
    self.uiStates[self.STATE_GAMEUI] = IngameUI.create(gameStates)

    -- this essentially allows the uiManager to not draw anything during state closing
    self.uiStates[self.STATE_CLOSING] = setmetatable({ draw = function() end}, {})

    return self
end

function UiManager:preload()
 --     print("PRE LOADING UI Manager")  -- DEBUG_TAG

    self.uiStates[self.STATE_SPLASH_SCREEN]:load()
    -- Set first state to SPLASH SCREEN
    self:changeState(self.STATE_SPLASH_SCREEN)
    self.uiStates[self.STATE_SPLASH_SCREEN]:init()
end

function UiManager:load()
 --     print("LOADING UI Manager")  -- DEBUG_TAG

    -- Check if the world has a minimap
    local worldArg = Utils.getArgs()['-w'] or Utils.getArgs()['--world']
    local worldId = worldArg or g_resMngr:getSaveData().gameManager.worldId
    if love.filesystem.getInfo('res/minimaps/' .. worldId .. '/minimap.lua') then
        self.uiStates[self.STATE_MENU] = Menu.create(worldId, self.gameStates, self)
    else
        self.uiStates[self.STATE_MENU] = nil
    end

    -- Load states (except Splash screen)
    if self.uiStates[self.STATE_MENU] then
        self.uiStates[self.STATE_MENU]:load()
    end
    self.uiStates[self.STATE_GAMEUI]:load()
end

function UiManager:update(dt)
    self.uiStates[self.currentState]:update(dt, self.gameStates, self)
end

function UiManager:draw()
    self.uiStates[self.currentState]:draw(self)
end

function UiManager:changeMap()
    self.hasMinimap = false
    if self.uiStates[self.STATE_MENU] then
        self.hasMinimap = self.uiStates[self.STATE_MENU]:hasMinimap(self.gameStates)
    end
    self.uiStates[self.STATE_GAMEUI]:setHasMinimap(self.hasMinimap)
end

-- Activations --------------------------------------------------------------------------

function UiManager:activateDialog(type, ...)
    self.uiStates[self.STATE_GAMEUI]:activateDialog(type, ...)
end

function UiManager:activateLoading(command)
    self.uiStates[self.STATE_GAMEUI]:activateLoading(command)
end

function UiManager:activateBottomRightPopUp(text, colour)
    self.uiStates[self.STATE_GAMEUI]:activateBottomRightPopUp(text, colour)
end

function UiManager:activateCentrePopUp(image, title, body, quad)
    self.uiStates[self.STATE_GAMEUI]:activateCentrePopUp(image, title, body, quad)
end

function UiManager:activateMenu()
    self.uiStates[self.STATE_MENU]:activate(self.gameStates, self)
end

function UiManager:activateAnimation(type, ...)
    self.uiStates[self.STATE_ANIMATION]:activate(type, ...)
end

function UiManager:deactivateInGame()
    self.uiStates[self.STATE_GAMEUI]:deactivateAll(self.gameStates)
end

-- Getters / Setters --------------------------------------------------------------------

function UiManager:changeState(state)
    self.currentState = state
end

function UiManager:hasNewQuest()
    return self.newQuest
end

function UiManager:setNewQuest(new)
    self.newQuest = new
end

function UiManager:hasNewCodex()
    return self.newCodex
end

function UiManager:setNewCodex(new)
    self.newCodex = new
end

function UiManager:hasAreaBeenVisited(name, visitedMaps)
    -- Check for if area (name) has been visited
    if self.hasMinimap and self.uiStates[self.STATE_MENU] then
        return self.uiStates[self.STATE_MENU]:hasAreaBeenVisited(name, visitedMaps)
    end
    return ""
end

function UiManager:getPercentageVisited()
    if self.uiStates[self.STATE_MENU] then
        return self.uiStates[self.STATE_MENU]:getPercentageVisited(self.gameStates)
    end
    return 0
end

-- Input --------------------------------------------------------------------------------

function UiManager:controls(isReleased, key, mousebutton, touchX, touchY)
    -- gameUI and menu input
    if self.currentState == self.STATE_GAMEUI then
        self.uiStates[self.STATE_GAMEUI]:controls(
            isReleased, key, mousebutton, touchX, touchY, self.gameStates
        )
        -- check if minimap exists
        if self.hasMinimap then
            self.uiStates[self.STATE_MENU]:checkForActivation(
                isReleased, key, touchX, touchY, self.gameStates, self
            )
        end
    -- menu input
    elseif self.hasMinimap and self.currentState == self.STATE_MENU then
        self.uiStates[self.STATE_MENU]:controls(
            isReleased, key, mousebutton, touchX, touchY, self.gameStates, self
        )
    -- splashscreen input
    elseif self.currentState == self.STATE_SPLASH_SCREEN then
        self.uiStates[self.STATE_SPLASH_SCREEN]:controls(
            isReleased, key, mousebutton, self.gameStates, self
        )
    end
end


return UiManager
