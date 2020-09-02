--[[
circleWipeIn.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This animation consists of a size decreasing hallow circle within a black rectangle.

Used as the first part of the animation when walking through a Portal.
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local CircleWipeIn = {}
CircleWipeIn.__index = CircleWipeIn

-- local function forward declaration
local transparentHoleStencil

-- constants
local ANIMATION_TIME = 1.5   -- in seconds
local RADIUS_PADDING = 10    -- px
local CIRCLE_SEGMENTS = 300

-- upvalues
local w, h, radius


function CircleWipeIn.create()
 --     print("CREATING CircleWipeIn")  -- DEBUG_TAG

    local self = setmetatable({}, CircleWipeIn)

    -- variables
    radius = 0
    w = 0
    h = 0
    self.elapsedTime = 0
    self.startRadius = 0

    return self
end

function CircleWipeIn:load()
 --     print("LOADING CircleWipeIn")  -- DEBUG_TAG
end

function CircleWipeIn:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    radius = Easing.inOutCubic(
        self.elapsedTime, self.startRadius, -self.startRadius, ANIMATION_TIME
    )
end

function CircleWipeIn:draw()
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

function CircleWipeIn:start()
    local sx, sy = Utils.getScale()
    w = g.getWidth() / sx
    h = g.getHeight() / sy
    self.startRadius = RADIUS_PADDING + math.sqrt(math.pow(w / 2, 2) + math.pow(h / 2, 2))
    radius = self.startRadius
    self.elapsedTime = 0
end

function CircleWipeIn:isFinished()
    return radius <= 0
end


function transparentHoleStencil()
    -- Draw a small circle as a stencil. This will be the hole.
    g.circle("fill", w / 2, h / 2, radius, CIRCLE_SEGMENTS)
end


return CircleWipeIn
