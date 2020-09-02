--[[
rectangleSwipeOut.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This animation consists of a left (bottom) and a right (top) black rectangle leaving the
screen to the sides. Their speed increases throughout.

Used as the second part of the fast travel animation.
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local RectangleSwipeOut = {}
RectangleSwipeOut.__index = RectangleSwipeOut

-- constants
local ANIMATION_TIME = 1  -- in seconds
local WIDTH_PADDING = 5   -- px


function RectangleSwipeOut.create()
 --     print("CREATING RectangleSwipeOut")  -- DEBUG_TAG

    local self = setmetatable({}, RectangleSwipeOut)

    -- variables
    self.rectW = 0  -- px all
    self.rectH = 0
    self.upRectX = 0
    self.upRectY = 0
    self.downRectX = 0
    self.downRectY = 0

    self.hiddenX = 0
    self.visibleX = 0
    self.elapsedTime = 0

    return self
end

function RectangleSwipeOut:load()
 --     print("LOADING RectangleSwipeOut")  -- DEBUG_TAG
end

function RectangleSwipeOut:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    self.upRectX = Easing.inQuint(
        self.elapsedTime, self.visibleX, self.hiddenX - self.visibleX, ANIMATION_TIME
    )
    self.downRectX = self.upRectX * -1
end

function RectangleSwipeOut:draw()
    -- the top black rectangle (from the right)
    Colour.set(Colour.BLACK)
    g.rectangle('fill', self.upRectX, self.upRectY, self.rectW, self.rectH)

    -- the bottom black rectangle (from the left)
    g.rectangle('fill', self.downRectX, self.downRectY, self.rectW, self.rectH)

    -- resetting graphics
    Colour.reset()
end

function RectangleSwipeOut:start()
    local sx, sy = Utils.getScale()
    local w = g.getWidth() / sx
    local h = g.getHeight() / sy
    self.rectW = w
    self.rectH = h / 2
    self.upRectX = 0
    self.downRectX = 0
    self.upRectY = 0
    self.downRectY = h / 2

    self.hiddenX = (w + WIDTH_PADDING) * -1
    self.elapsedTime = 0
end

function RectangleSwipeOut:isFinished()
    return self.upRectX <= self.hiddenX
end


return RectangleSwipeOut
