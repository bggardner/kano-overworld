--[[
typewriter.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Prints a string one character at a time given a specific speed
]]--


local Colour = require 'system.colour'
local UTF8 = require 'system.utf8'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local t = love.timer


local Typewriter = {}
Typewriter.__index = Typewriter


function Typewriter.create(textColour)
 --     print("CREATING Typewriter")    -- DEBUG_TAG
    local self = setmetatable({}, Typewriter)
    self.textColour = textColour or Colour.WHITE

    return self
end

function Typewriter:init(text, x, y, speed, font)
    g_resMngr.playSound(g_resMngr.SFX_TALKING)
    self.finalText = text
    self.iter = UTF8.iter(text)
    self.x = x
    self.y = y
    self.speed = speed
    self.currentText = ""
    self.currentChar = self.iter()
    self.typeTime = 0
    self.text = g.newText(g_resMngr.fonts[font], "")
end

function Typewriter:update(dt)
    local currentTime = t.getTime()
    if (not self:complete()) and (currentTime - self.typeTime > self.speed * dt) then
        self.currentText = self.currentText..self.currentChar
        Utils.setText(self.text, self.currentText)
        self.currentChar = self.iter()
        self.typeTime = currentTime
    end
end

function Typewriter:draw()
    Colour.set(self.textColour)
    g.draw(self.text, self.x, self.y)
    Colour.set(Colour.WHITE)
end

function Typewriter:complete()
    return (self.currentChar == nil)
end


return Typewriter
