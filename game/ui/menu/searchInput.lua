--[[
searchInput.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Button consistent on text and action
]]--


local Colour = require 'system.colour'
local Locale = require 'system.locale'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local m = love.mouse
local t = love.timer


local SearchInput = {}
SearchInput.__index = SearchInput

-- local function forward declaration
local checkPosition, drawCursor, updateCursorAnimation


function SearchInput.create(action, args)
 --     print("CREATING SearchInput")  -- DEBUG_TAG

    local self = setmetatable({}, SearchInput)

    self.action = action
    self.args = args

    --
    self.selected = false
    self.currentText = Locale.text("search")

    -- blinking cursor
    self.timeAnim = 0
    self.currentCursorColour = 1
    self.cursorColours = {{Colour.WHITE, 0}, {Colour.GREY, 255}}

    return self
end

function SearchInput:load(tileset)
    self.tileset = tileset
    self.quad = g.newQuad(293, 161, 17, 17, Utils.getSize(tileset))
end

function SearchInput:init(x, y)
    self.selected = false
    -- Text
    self.text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text("search"))
    self.size = { w = 220, h = 30}
    self.pos = {x = x, y = y}
end

function SearchInput:update()
    -- blinking cursor animation
    if self.selected then
        updateCursorAnimation(self)
    end

    return self.selected
end

function SearchInput:draw()
    local lineW = g.getLineWidth()
    g.setLineWidth(1)
    Colour.set(Colour.WHITE)

    -- magnifier
    g.draw(self.tileset, self.quad, self.pos.x + 6, self.pos.y + 7)
    -- text
    g.draw(self.text, self.pos.x + 30, self.pos.y + 2)
    -- frame
    if self.selected then
        Colour.set(Colour.ORANGE_KANO)
    end
    g.rectangle("line", self.pos.x, self.pos.y, self.size.w, self.size.h, 2, 2, 10)
    -- blinking cursor
    if self.selected then
        drawCursor(self)
    end

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end

function SearchInput:select(bool)
    self.selected = bool
end

function SearchInput:isSelected()
    return self.selected
end

function SearchInput:reset()
    self.currentText = Locale.text("search")
    Utils.setText(self.text, self.currentText)
    self.selected = false
    self.currentCursorColour = 1
end

-- Input --------------------------------------------------------------------------------

function SearchInput:controls(isReleased, key, mousebutton)
    -- key input onPress
    if not isReleased and self.selected then
        -- Enter
        if key == 'return' then
            self:click()
            return true
        --
        elseif key ~= nil then
            local old = self.currentText
            if key == 'backspace' or key == 'delete' then
                self.currentText = self.currentText:sub(1, -2)
            elseif key == 'space' then
                self.currentText = self.currentText .. ' '
            elseif string.len(key) == 1 then
                self.currentText = self.currentText .. key
            end
            -- limit to 11 characters
            local maxChar = 11
            if string.len(self.currentText) > maxChar then
                local excess = (string.len(self.currentText) - maxChar) + 1
                self.currentText = self.currentText:sub(1, -excess)
            end
            -- Update the text
            if self.currentText ~= old then
                self:click()
                Utils.setText(self.text, self.currentText)
                return self.selected
            end
        end
    end
    -- key input onRelease
    if isReleased and self.selected then
        -- Esc
        if key == 'escape' then
            self.currentText = ''
            self:click()
            self:reset()
        end
    end
    -- mouse input
    if isReleased and mousebutton == 1 then
        if self.currentText == "" then
            self:click()
            self:reset()
        end
        if checkPosition(self.pos, self.size) then
            if self.currentText == Locale.text("search") then
                self.text:clear()
                self.currentText = ""
                self:click()
            end
            self.selected = true
            return true
        else
            self.selected = false
        end
    end
    return false
end

function SearchInput:click()
    if self.action then
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
        -- call the function
        self.action(unpack(self.args), self.currentText)
    end
end

-- Private ------------------------------------------------------------------------------

function updateCursorAnimation(self)
    local cTime = t.getTime()
    if (cTime - self.timeAnim) > 0.5 then
        self.currentCursorColour = (self.currentCursorColour % 2) + 1
        self.timeAnim = cTime
    end
end

function drawCursor(self)
    Colour.set(unpack(self.cursorColours[self.currentCursorColour]))

    g.rectangle("fill",
        self.pos.x + 30 + self.text:getWidth(), self.pos.y + 4,
        10, 21
    )
end

function checkPosition(pos, size)
    local sw, sh = Utils.getScale()
    local x = pos.x * sw
    local y = pos.y * sh
    local w = size.w * sw
    local h = size.h * sh
    return ((m.getX() >= x) and (m.getX() <= (x + w))) and
           ((m.getY() >= y) and (m.getY() <= (y + h)))
end


return SearchInput
