--[[
speechBubble.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Colour = require 'system.colour'
local Typewriter = require 'system.typewriter'

local love = love
local g = love.graphics


local SpeechBubble = {}
SpeechBubble.__index = SpeechBubble

-- constants
local STATE_INACTIVE = 1
local STATE_ACTIVE = 2
local STATE_CLOSING = 3


function SpeechBubble.create(objectManager)
 --     print("CREATING Speech Bubble")  -- DEBUG_TAG

    local self = setmetatable({}, SpeechBubble)

    self.objectManager = objectManager

    self.state = STATE_INACTIVE
    self.closeTime = 0
    self.typewriter = Typewriter.create()
    self.autoclose = false

    return self
end

function SpeechBubble:update(dt)
    if self.state == STATE_ACTIVE then
        self.typewriter:update(dt)
        if self.typewriter:complete() then
            self:deactivate()
        end
    elseif self.state == STATE_CLOSING then
        if (love.timer.getTime() - self.closeTime) > 2 then
            self.state = STATE_INACTIVE
            self.objectManager:deactivate("bubble")
        end
    end
end

function SpeechBubble:draw()
    -- Bubble
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", self.x, self.y, self.width, self.height, 2, 2, 10)
    g.polygon("fill", self.x, self.y, self.x - 10, self.y + 20, self.x + 20, self.y)
    -- Text
    self.typewriter:draw()

    -- resetting graphics
    Colour.reset()
end

function SpeechBubble:activate(x, y, text, autoclose)
    -- Only activate if inactive
    if not self:isActive() then
        self.state = STATE_ACTIVE
        self.x = x + 30
        self.y = y - 20
        self:calculateSize(text)
        self.typewriter:init(text, self.x, self.y, 0.05, g_resMngr.DEFAULT_FONT_16)
        self.autoclose = autoclose
    end
end

function SpeechBubble:deactivate()
    if self.autoclose then
        self.state = STATE_CLOSING
        self.closeTime = love.timer.getTime()
    else
        self.state = STATE_INACTIVE
    end
end

function SpeechBubble:isActive()
    return self.state ~= STATE_INACTIVE
end

-- Calculates the size of the bubble based on the text
function SpeechBubble:calculateSize(text)
    local lines = {}
    local numLines = 1
    local maxLength = 0
    -- look for \n
    for str in text:gmatch("[^\n]+") do
        lines[numLines] = str
        numLines = numLines + 1
        if #str > maxLength then
            maxLength = #str
        end
    end
    -- These multipliers should depend on font size
    self.width = maxLength * 5
    self.height = numLines * 10
end


return SpeechBubble
