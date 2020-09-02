--[[
questMarker.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Utils = require 'system/utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local QuestMarker = {}
QuestMarker.__index = QuestMarker

-- constants
local STATE_INACTIVE = 1
local STATE_ACTIVE = 2
local STATE_HIDE = 3


function QuestMarker.create(id)
 --     print("CREATING Quest Marker")  -- DEBUG_TAG

    local self = setmetatable({}, QuestMarker)

    self.id = id
    self.state = STATE_INACTIVE

    return self
end

function QuestMarker:update(dt)
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

function QuestMarker:draw(image, quad)
    if self.state == STATE_ACTIVE then
        g.draw(image, quad, self.x, self.y)
    end
end

function QuestMarker:activate(x, y, _, h)
    self.state = STATE_ACTIVE
    self.vy = 1
    self.elapsedTime = 0
    -- Position of the ALERT marker
    self.x = x + 2
    self.y = y - h
    self.minY = self.y - h/4
    self.maxY = self.y + h/4
    -- Track the interaction
    Utils.addInteraction()
end

function QuestMarker:deactivate()
    self.state = STATE_INACTIVE
    self.elapsedTime = 0
end

function QuestMarker:isActive()
    return self.state ~= STATE_INACTIVE
end

function QuestMarker:toggleHide()
    if self.state == STATE_ACTIVE then
        self.state = STATE_HIDE
    else
        self.state = STATE_ACTIVE
    end
end

function QuestMarker:getId()
    return self.id
end


return QuestMarker
