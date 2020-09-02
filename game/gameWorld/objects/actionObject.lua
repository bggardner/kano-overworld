--[[
actionObject.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Utils = require 'system.utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local ActionObject = {}
ActionObject.__index = ActionObject

-- constants
local STATE_INACTIVE = 1
local STATE_ACTIVE = 2


function ActionObject.create(gameStates, objectManager)
 --     print("CREATING Action Object")  -- DEBUG_TAG

    local self = setmetatable({}, ActionObject)

    self.gameStates = gameStates
    self.objectManager = objectManager
    self.state = STATE_INACTIVE
    self.type = "" -- "speech, dialogue"
    self.properties = {}

    return self
end

function ActionObject:load()
 --     print("LOADING Action Object")  -- DEBUG_TAG
    -- Create quad
    self.uiElements = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    self.w, self.h = 47, 24
    self.enterQuad = g.newQuad(112, 0, self.w, self.h, Utils.getSize(self.uiElements))
end

function ActionObject:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    if self.vy > 0 then
        local ending = self.maxY - self.minY
        self.y = Easing.inCubic(self.elapsedTime, self.minY, ending, 0.5)
    else
        local ending = self.minY - self.maxY
        self.y = Easing.outCubic(self.elapsedTime, self.maxY, ending, 0.5)
    end
    -- Change direction
    if self.y > self.maxY or self.y < self.minY then
        self.vy = self.vy * -1
        self.elapsedTime = 0
    end
end

function ActionObject:draw()
    g.draw(self.uiElements, self.enterQuad, self.x, self.y)
end

function ActionObject:activate(type, x, y, ...)
    --
    self.type = type
    self.state = STATE_ACTIVE
    self.orig = {x = x, y = y}
    self.vy = 1
    self.elapsedTime = 0
    --
    local n = select('#', ...)  -- number of arguments
    for i = 1, n do
        local a = select(i, ...)
        self.properties[i] = a
    end
    -- Position of the ENTER image
    self.x = x - 7
    self.y = y - self.h
    self.minY = self.y - self.h / 4
    self.maxY = self.y + self.h / 4
    -- Track the interaction
    Utils.addInteraction()

    -- check if characterDialog
    if self.type == 'characterDialog' then
        self.character = self.properties[#self.properties]
    end
end

function ActionObject:deactivate()
    self.state = STATE_INACTIVE
    self.properties = {}

    -- notify the character of the deactivation event (restores his state)
    if self.type == 'characterDialog' then
        self.character:deactivate()
    end
end

function ActionObject:isActive()
    return self.state ~= STATE_INACTIVE
end

-- Input --------------------------------------------------------------------------------

function ActionObject:controls(isReleased, key, mousebutton)
    -- check for enter key or left mouse button
    if isReleased and (key == "return" or mousebutton == 1) then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        if self.type == "bubble" then
            local text = self.properties[1]
            self.objectManager:activateBubble(self.orig.x, self.orig.y, text, true)
        elseif self.type == "characterDialog" or
               self.type == "signDialog" or
               self.type == "plaqueDialog" or
               self.type == "terminalDialog" then
            self.gameStates:activateDialog(self.type, unpack(self.properties))
            self.gameStates:changeState(self.gameStates.STATE_LAUNCH)
        end
        self.objectManager:deactivate("action")
    end
end


return ActionObject
