--[[
button.lua

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


local Button = {}
Button.__index = Button

-- local function forward declaration
local checkPosition, checkTouchPosition


function Button.create(textKey, action, args, font, boxColour, shadowColour, frameColour)
 --     print("CREATING Button")  -- DEBUG_TAG

    local self = setmetatable({}, Button)

    self.selected = false
    self.isNew = false

    --
    self.textKey = textKey
    self.action = action
    self.args = args
    self.font = font
    self.colours = {
        box = boxColour, shadow = shadowColour, frame = frameColour,
        disabled = Colour.GREY_DARK
    }

    -- tooltip pop up
    self.tooltipText = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], '')
    self.tooltipPos = {x = 0, y = 0}
    self.tooltipSize = {w = 0, h = 0}
    self.tooltipTriangle = {x1 = 0, y1 = 0, x2 = 0, y2 = 0, x3 = 0, y3 = 0}

    return self
end

function Button:init()
    self.selected = false
    -- Text
    self.text = g.newText(
        g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text(self.textKey)
    )
    -- Calculate size
    local textW = Utils.round(self.text:getWidth())
    local textH = Utils.round(self.text:getHeight())
    self.size = { w = textW + 20, h = textH + 5}
end

function Button:update()
    -- Check hoverover
    self.selected = self.selected or checkPosition(self.pos, self.size)
    return self.selected
end

function Button:draw()
    local lineW = g.getLineWidth()

    -- shadow
    Colour.set(self.colours.shadow)
    g.rectangle("fill", self.pos.x, self.pos.y + 5, self.size.w, self.size.h, 2, 2, 10)
    -- frame
    if self.colours.frame then
        g.setLineWidth(1)
        Colour.set(self.colours.frame)
        g.rectangle("line", self.pos.x, self.pos.y, self.size.w, self.size.h, 2, 2, 10)
    end
    -- box
    Colour.set(self.colours.box)
    g.rectangle("fill", self.pos.x, self.pos.y, self.size.w, self.size.h, 2, 2, 10)
    -- text
    Colour.set(Colour.WHITE)
    g.draw(self.text, self.textPos.x, self.textPos.y)
    -- hover highlight
    if self.selected then
        self:drawHoverHighlight()
        -- tooltip pop up
        if self.tooltipText then
            self:drawTooltip()
        end
    -- new item highlight
    elseif self.isNew then
        self:drawIsNewHighlight()
    end

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end

function Button:drawHoverHighlight()
    g.setLineWidth(6)
    Colour.set(Colour.WHITE)
    g.rectangle(
        "line", self.highlight.x, self.highlight.y, self.highlight.w, self.highlight.h,
        2, 2, 10
    )
    g.setLineWidth(2)
    Colour.set(Colour.ORANGE_KANO)
    g.rectangle(
        "line", self.highlight.x, self.highlight.y, self.highlight.w, self.highlight.h,
        2, 2, 10
    )
end

function Button:drawIsNewHighlight()
    g.setLineWidth(2)
    Colour.set(Colour.GREEN_BRIGHT)
    g.rectangle(
        "line", self.highlight.x, self.highlight.y, self.highlight.w, self.highlight.h,
        2, 2, 10
    )
end

function Button:drawTooltip()
    -- bubble
    Colour.set(Colour.WHITE)
    g.rectangle(
        "fill", self.tooltipPos.x, self.tooltipPos.y,
        self.tooltipSize.w, self.tooltipSize.h, 2, 2, 10
    )
    -- triangle
    g.polygon("fill",
        self.tooltipTriangle.x1, self.tooltipTriangle.y1,
        self.tooltipTriangle.x2, self.tooltipTriangle.y2,
        self.tooltipTriangle.x3, self.tooltipTriangle.y3
    )
    -- text
    Colour.set(Colour.ORANGE_KANO)
    g.draw(self.tooltipText, self.tooltipPos.x + 5, self.tooltipPos.y)
    -- resetting graphics
    Colour.reset()
end

function Button:toggleSelected()
    self.selected = not self.selected
end

function Button:select(bool)
    self.selected = bool
end

function Button:setIsNew(isNew)
    self.isNew = isNew
end

function Button:getSize()
    return self.size
end

function Button:getPos()
    return self.pos
end

function Button:setPos(x, y)
    -- position
    self.pos = { x = x, y = y }
    --
    if self.text then
        local textW = self.text:getWidth()
        local textH = self.text:getHeight()
        local posX = Utils.round(self.pos.x + (self.size.w - textW) / 2)
        local posY = Utils.round(self.pos.y + (self.size.h - textH) / 2)
        self.textPos = {x = posX, y = posY}
    end
    --
    self:setHighlight(1, 1, 3, 3)
end

function Button:setColour(box, frame)
    self.colours.box = box
    self.colours.frame = frame
end

function Button:setDisabledColour(colour)
    self.colours.disabled = colour
end

function Button:setHighlight(x, y, w, h)
    self.highlight = {x = self.pos.x - x, y = self.pos.y - y,
                      w = self.size.w + w, h = self.size.h + h}
end

function Button:setTooltipTextKey(textKey)
    if not textKey or textKey == '' then
        return
    end

    Utils.setText(self.tooltipText, Locale.text(textKey))
    self.tooltipSize = {
        w = self.tooltipText:getWidth() + 10,
        h = self.tooltipText:getHeight() + 3
    }
    -- TODO: remove the +16 here, its needed because of CodexMenu:drawElements
    self.tooltipPos = {
        x = Utils.round(self.pos.x + self.size.w / 2 - self.tooltipSize.w / 2) + 16,
        y = self.pos.y - self.tooltipSize.h - 20
    }
    self.tooltipTriangle = {
        x1 = Utils.round(self.tooltipPos.x + (self.tooltipSize.w / 2) - 10),
        y1 = self.tooltipPos.y + self.tooltipSize.h,
        x2 = Utils.round(self.tooltipPos.x + (self.tooltipSize.w / 2)),
        y2 = self.tooltipPos.y + self.tooltipSize.h + 10,
        x3 = Utils.round(self.tooltipPos.x + (self.tooltipSize.w / 2) + 10),
        y3 = self.tooltipPos.y + self.tooltipSize.h,
    }
end

-- Input --------------------------------------------------------------------------------

function Button:controls(isReleased, key, mousebutton, touchX, touchY)
    if isReleased and key == 'return' and self.selected then
        self:click()
        return true
    end
    if isReleased and mousebutton == 1 then
        if checkPosition(self.pos, self.size) then
            self:click()
            self.selected = true
            return true
        end
    end
    if touchX ~= nil and touchY ~= nil then
        if checkTouchPosition(self.pos, self.size, touchX, touchY) then
            self:click()
            self.selected = true
            return true
        end
    end
    return false
end

function Button:click()
    if self.action then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        self.action(unpack(self.args))
    end
end

-- Private ------------------------------------------------------------------------------

function checkPosition(pos, size)
    local sw, sh = Utils.getScale()
    return ((pos.x * sw) <= m.getX()) and (m.getX() <= (pos.x * sw + size.w * sw)) and
           ((pos.y * sh) <= m.getY()) and (m.getY() <= (pos.y * sh + size.h * sh))
end

function checkTouchPosition(pos, size, touchX, touchY)
    local sw, sh = Utils.getScale()
    return ((pos.x * sw) <= touchX) and (touchX <= (pos.x * sw + size.w * sw)) and
           ((pos.y * sh) <= touchY) and (touchY <= (pos.y * sh + size.h * sh))
end


return Button
