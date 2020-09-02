--[[
bottomRightPopUp.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the popup that comes up in the bottom right.

The animation of the element is done with Penner's Easing Functions.
A great visualisation of these can be found here http://easings.net/
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics


local BottomRightPopUp = {}
BottomRightPopUp.__index = BottomRightPopUp

-- local function forward declaration
local setup

-- constants
local ELEMENT_SPACING_RIGHT = 25   -- px all
local ELEMENT_SPACING_BOTTOM = 25
local ELEMENT_PADDING_WIDTH = 10
local ELEMENT_PADDING_HEIGHT = 5


function BottomRightPopUp.create(ingameUI)
 --     print("CREATING BottomRightPopUp")  -- DEBUG_TAG

    local self = setmetatable({}, BottomRightPopUp)

    -- parameters
    self.ingameUI = ingameUI

    -- states
    self.STATE_INACTIVE = 1
    self.STATE_RISING = 2
    self.STATE_FALLING = 3

    -- variables
    self.state = self.STATE_INACTIVE
    self.elapsedTime = 0
    self.text = {}
    self.x = 0  -- px all
    self.y = 0
    self.w = 0
    self.h = 0
    self.visibleY = 0
    self.hiddenY = 0
    self.colour = Colour.WHITE

    return self
end

function BottomRightPopUp:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    if self.state == self.STATE_RISING then
        self.y = Utils.round(Easing.outElastic(
            self.elapsedTime, self.hiddenY, self.visibleY - self.hiddenY, 2
        ))
        if self.elapsedTime >= 3 then
            self.state = self.STATE_FALLING
            self.elapsedTime = 0
        end

    elseif self.state == self.STATE_FALLING then
        self.y = Utils.round(Easing.inBack(
            self.elapsedTime, self.visibleY, self.hiddenY - self.visibleY, 1
        ))
        if self.y >= self.hiddenY then
            self.ingameUI:deactivateBottomRightPopUp()
        end
    end
end

function BottomRightPopUp:draw()
    -- shadow
    Colour.set(Colour.BLACK, 70)
    g.rectangle("fill", self.x, self.y + 4, self.w, self.h, 5, 5, 10)

    -- background
    Colour.set(Colour.WHITE)
    g.rectangle("fill", self.x, self.y, self.w, self.h, 5, 5, 10)

    -- text
    Colour.set(self.colour)
    local y = Utils.round(self.y + ELEMENT_PADDING_HEIGHT)
    for i = 1, #self.text do
        g.draw(
            self.text[i],
            Utils.round(self.x + self.w / 2 - self.text[i]:getWidth() / 2),
            y
        )
        y = y + self.text[i]:getHeight()
    end

    -- resetting graphics
    Colour.reset()
end

function BottomRightPopUp:activate(text, colour)
    local i = 1
    local maxW = 0
    self.text = {}
    for line in string.gmatch(text,'[^\r\n]+') do
        self.text[i] = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], line)
        maxW = math.max(maxW, self.text[i]:getWidth())
        i = i + 1
    end

    -- adapt and position the widget based on the text
    setup(self, colour, maxW)

    -- set the place from which the widget pops up
    self.y = self.hiddenY

    -- activate the animation
    self.state = self.STATE_RISING
end

function BottomRightPopUp:changeText(text, colour)
    local i = 1
    local maxW = 0
    self.text = {}
    for line in string.gmatch(text,'[^\r\n]+') do
        self.text[i] = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], line)
        maxW = math.max(maxW, self.text[i]:getWidth())
        i = i + 1
    end

    -- adapt and position the widget based on the text
    setup(self, colour, maxW)
end

function BottomRightPopUp:deactivate()
    self.state = self.STATE_INACTIVE
    self.elapsedTime = 0
end

function setup(self, colour, maxW)
    -- get screen scaling factors
    local sx, sy = Utils.getScale()
    local w = g.getWidth() / sx
    local h = g.getHeight() / sy

    self.colour = colour or Colour.ORANGE_KANO
    -- adapt positioning of element to scaling
    self.w = maxW + ELEMENT_PADDING_WIDTH * 2
    self.h = (self.text[1]:getHeight() * #self.text) + ELEMENT_PADDING_HEIGHT * 2
    self.x = w - self.w - ELEMENT_SPACING_RIGHT
    self.visibleY = h - self.h - ELEMENT_SPACING_BOTTOM
    self.hiddenY = h + 5
end


return BottomRightPopUp
