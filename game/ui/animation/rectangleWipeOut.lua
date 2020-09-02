--[[
rectangleWipeOut.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This animation consists of a size decreasing hallow rectangle within a black rectangle.
It also has a small bounce as it's increasing.

Used as the second part of the animation when walking through a Door.
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local RectangleWipeOut = {}
RectangleWipeOut.__index = RectangleWipeOut

-- local function forward declaration
local transparentHoleStencil

-- constants
local ANIMATION_TIME = 1.6  -- in seconds
local WIDTH_PADDING = 5     -- px
local HEIGHT_SCALE = 1.5    -- height scale based off width

-- upvalues
local w, h, rectW, rectH


function RectangleWipeOut.create()
 --     print("CREATING RectangleWipeOut")  -- DEBUG_TAG

    local self = setmetatable({}, RectangleWipeOut)

    -- variables
    w = 0
    h = 0
    rectW = 0
    rectH = 0
    self.elapsedTime = 0

    return self
end

function RectangleWipeOut:load()
 --     print("LOADING RectangleWipeOut")  -- DEBUG_TAG
end

function RectangleWipeOut:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    rectW = Easing.inOutBack(self.elapsedTime, 0, w, ANIMATION_TIME)
    rectH = rectW * HEIGHT_SCALE
end

function RectangleWipeOut:draw()
    -- Each pixel touched by the circle will have its stencil value set to 1.
    -- The rest will be 0.
    g.stencil(transparentHoleStencil, 'replace', 1)

    -- Configure the stencil test to only allow rendering on pixels whose stencil
    -- value is equal to 0. This will end up being every pixel *except* ones that
    -- were touched by the circle drawn as a stencil.
    g.setStencilTest('equal', 0)
    Colour.set(Colour.BLACK)
    g.rectangle('fill', 0, 0, w, h)
    g.setStencilTest()

    -- resetting graphics
    Colour.reset()
end

function RectangleWipeOut:start()
    local sx, sy = Utils.getScale()
    w = g.getWidth() / sx
    h = g.getHeight() / sy
    rectW = 0
    rectH = 0
    self.elapsedTime = 0
end

function RectangleWipeOut:isFinished()
    return rectW >= w + WIDTH_PADDING
end


function transparentHoleStencil()
    -- Draw a small circle as a stencil. This will be the hole.
    g.rectangle("fill", w / 2 - rectW / 2, h / 2 - rectH / 2, rectW, rectH)
end


return RectangleWipeOut
