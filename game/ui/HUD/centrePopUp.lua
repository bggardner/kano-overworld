--[[
centrePopUp.lua

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
local t = love.timer

local CentrePopUp = {}
CentrePopUp.__index = CentrePopUp

-- local function forward declaration
local setup, calculateSizePosition

-- constants
local ELEMENT_PADDING_WIDTH = 21
local ELEMENT_PADDING_HEIGHT = 5
local IMAGE_WIDTH = 27
local IMAGE_HEIGHT = 35
local SHOWING_TIME = 2
local OPACITY_SPEED = 800

function CentrePopUp.create(ingameUI)
 --     print("CREATING CentrePopUp")  -- DEBUG_TAG

    local self = setmetatable({}, CentrePopUp)

    -- parameters
    self.ingameUI = ingameUI

    -- states
    self.STATE_INACTIVE = 1
    self.STATE_OPENING1 = 2
    self.STATE_OPENING2 = 3
    self.STATE_SHOWING = 4
    self.STATE_CLOSING1 = 5
    self.STATE_CLOSING2 = 6
    self.STATE_CLOSING3 = 7

    -- variables
    self.state = self.STATE_INACTIVE
    self.elapsedTime = 0
    self.x = 0  -- px all
    self.y = 0
    self.w = 0
    self.h = 0
    self.maxY = 0
    self.sx = 0  -- horizontal scale
    self.sy = 0  -- vertical scale
    self.overlayAlpha = 255
    self.showTime = 0
    -- image
    self.tileset = nil
    self.altImage = nil
    self.quad = nil
    self.quadScale = 0
    self.quadQuest = nil
    self.quadMap = nil
    --
    self.backgroundColour = Colour.ORANGE_KANO

    return self
end

function CentrePopUp:load()
    self.tileset = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    -- Quest logo
    local tileX, tileY = 112, 26
    self.quadQuest = g.newQuad(tileX, tileY, IMAGE_WIDTH, IMAGE_HEIGHT,
                               Utils.getSize(self.tileset))
    -- Map logo
    tileX, tileY = 191, 0
    self.quadMap = g.newQuad(tileX, tileY, IMAGE_WIDTH, IMAGE_HEIGHT,
                             Utils.getSize(self.tileset))
end

function CentrePopUp:update(dt)
    self.elapsedTime = self.elapsedTime + dt

    -- Opening1: vertical scale from 0 to 1
    if self.state == self.STATE_OPENING1 then
        -- outExpo(elapsedTime, begin, change, duration)
        self.sy = Easing.outExpo(self.elapsedTime, 0, 1, 0.5)
        if self.sy >= 1 then
            self.state = self.STATE_OPENING2
            self.sy = 1
        end
        calculateSizePosition(self)
    -- Opening2: overlay opacity from 255 to 0 [linear]
    elseif self.state == self.STATE_OPENING2 then
        self.overlayAlpha = self.overlayAlpha - OPACITY_SPEED * dt
        if self.overlayAlpha <= 0 then
            self.state = self.STATE_SHOWING
            self.overlayAlpha = 0
            self.showTime = t.getTime()
        end
    -- Showing: pause everyting for SHOWING_TIME seconds
    elseif self.state == self.STATE_SHOWING then
        if (t.getTime() - self.showTime) > SHOWING_TIME then
            self.state = self.STATE_CLOSING1
        end
    -- Closing 1: overlay opacity from 0 to 255 [linear]
    elseif self.state == self.STATE_CLOSING1 then
        self.overlayAlpha = self.overlayAlpha + OPACITY_SPEED * dt
        if self.overlayAlpha >= 255 then
            self.elapsedTime = 0
            self.maxY = self.y
            self.state = self.STATE_CLOSING2
        end
    -- Closing2: y position +20px
    elseif self.state == self.STATE_CLOSING2 then
        -- inBack(elapsedTime, begin, change, duration)
        self.y = Utils.round(Easing.inBack(self.elapsedTime, self.maxY, 20, 0.1))
        if self.y >= self.maxY + 20 then
            self.elapsedTime = 0
            self.maxY = self.y
            self.state = self.STATE_CLOSING3
        end
    -- Closing3: horizontal scale from 1 to 0 + y position +40px
    elseif self.state == self.STATE_CLOSING3 then
        -- inBack(elapsedTime, begin, change, duration)
        self.y = Utils.round(Easing.inBack(self.elapsedTime, self.maxY, 40, 0.1))
        -- outExpo(elapsedTime, begin, change, duration)
        self.sx = Easing.outExpo(self.elapsedTime, 1, -1, 0.1)
        if self.sx <= 0 then
            self:deactivate()
        end
        calculateSizePosition(self, true)
    end
end

function CentrePopUp:draw()
    -- Don't bother drawing the elements if overlay is on top
    if self.overlayAlpha < 255 then
        -- shadow
        Colour.set(Colour.BLACK, 70)
        g.rectangle("fill", self.x, self.y + 4, self.w, self.h, 5, 5, 10)

        -- background
        Colour.set(self.backgroundColour)
        g.rectangle("fill", self.x, self.y, self.w, self.h, 5, 5, 10)

        -- icon
        Colour.set(Colour.WHITE)
        g.draw(self.tileset, self.quad,
               Utils.round(self.x + ELEMENT_PADDING_WIDTH/2),
               Utils.round(self.y + (self.h - IMAGE_HEIGHT)/2),
               0, self.quadScale, self.quadScale)

        -- title
        g.draw(self.title,
               self.x + ELEMENT_PADDING_WIDTH + IMAGE_WIDTH,
               self.y + ELEMENT_PADDING_HEIGHT)
        g.draw(self.body,
               self.x + ELEMENT_PADDING_WIDTH + IMAGE_WIDTH,
               self.y + ELEMENT_PADDING_HEIGHT + self.title:getHeight())
    end

    -- overlay
    Colour.set(Colour.WHITE, self.overlayAlpha)
    g.rectangle("fill", self.x, self.y, self.w, self.h + 4, 5, 5, 10)

    -- resetting graphics
    Colour.reset()
end

function CentrePopUp:activate(image, title, body, quad)
    -- Choose image  -- TODO: refactor nasty tileset passing and switching
    if image == "quest" then
        self.tileset = g_resMngr.images[g_resMngr.UI_ELEMENTS]
        self.quad = self.quadQuest
        self.quadScale = 1
        self.backgroundColour = Colour.LAVENDER
    elseif image == "map" then
        self.tileset = g_resMngr.images[g_resMngr.UI_ELEMENTS]
        self.quad = self.quadMap
        self.quadScale = 1
        self.backgroundColour = Colour.GREEN_FOREST
    elseif image == "codex" then
        self.tileset = g_resMngr.images[g_resMngr.CODEX_ELEMENTS]
        self.quad = quad
        self.quadScale = 2
        self.backgroundColour = Colour.BLUE_SEA
    end
    -- Text
    self.title = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], title)
    self.body = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], body)
    -- adapt and position the widget based on the text
    setup(self)

    -- activate the animation
    self.state = self.STATE_OPENING1
end

function CentrePopUp:deactivate()
    self.elapsedTime = 0
    self.ingameUI:deactivateCentrePopUp()
end

-- Private ------------------------------------------------------------------------------

function setup(self)
    -- variables
    self.overlayAlpha = 255
    self.sx = 1
    self.sy = 0
    --
    calculateSizePosition(self)
end

function calculateSizePosition(self, skipHeight)
    -- get screen scaling factors
    local sx, sy = Utils.getScale()
    local w = g.getWidth() / sx
    local h = g.getHeight() / sy
    local maxW = math.max(self.title:getWidth(), self.body:getWidth())

    -- adapt positioning of element to scaling
    self.w = maxW + ELEMENT_PADDING_WIDTH * 2 + IMAGE_WIDTH
    self.w = self.w * self.sx
    self.h = IMAGE_HEIGHT + ELEMENT_PADDING_HEIGHT * 4
    self.h = self.h * self.sy
    self.x = Utils.round((w - self.w) / 2)
    if not skipHeight then
        self.y = Utils.round((h - self.h) / 2)
    end
end


return CentrePopUp
