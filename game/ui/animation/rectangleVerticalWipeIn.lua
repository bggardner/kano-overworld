--[[
rectangleVerticalWipeIn.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This animation consists of a bottom and a top black rectangle coming into view, meeting
in the middle. Their speed decreases towards the end.

Used as the game closing animation when you go back to Dashboard.
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local RectangleVerticalWipeIn = {}
RectangleVerticalWipeIn.__index = RectangleVerticalWipeIn

-- constants
local ANIMATION_TIME = 0.5  -- in seconds
local HEIGHT_PADDING = 5    -- px


function RectangleVerticalWipeIn.create()
 --     print("CREATING RectangleVerticalWipeIn")  -- DEBUG_TAG

    local self = setmetatable({}, RectangleVerticalWipeIn)

    -- variables
    self.rectW = 0  -- px all
    self.rectH = 0
    self.upRectY = 0
    self.downRectY = 0

    self.hiddenY = 0
    self.visibleY = 0
    self.elapsedTime = 0

    return self
end

function RectangleVerticalWipeIn:load()
 --     print("LOADING RectangleVerticalWipeIn")  -- DEBUG_TAG
end

function RectangleVerticalWipeIn:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    self.upRectY = Easing.outQuint(
        self.elapsedTime, self.hiddenY, self.visibleY - self.hiddenY, ANIMATION_TIME
    )
    self.downRectY = self.upRectY * -1
end

function RectangleVerticalWipeIn:draw()
    -- the top black rectangle (from the right)
    Colour.set(Colour.BLACK)
    g.rectangle('fill', 0, self.upRectY, self.rectW, self.rectH)

    -- the bottom black rectangle (from the left)
    g.rectangle('fill', 0, self.downRectY, self.rectW, self.rectH)

    -- resetting graphics
    Colour.reset()
end

function RectangleVerticalWipeIn:start()
    local sx, sy = Utils.getScale()
    self.rectW = g.getWidth() / sx
    self.rectH = g.getHeight() / sy
    self.upRectY = (self.rectH + HEIGHT_PADDING) * -1
    self.downRectY = self.upRectY * -1

    self.hiddenY = self.upRectY
    self.visibleY = (self.rectH / 2) * -1
    self.elapsedTime = 0
end

function RectangleVerticalWipeIn:isFinished()
    return self.upRectY >= self.visibleY
end


return RectangleVerticalWipeIn
