--[[
buttonTab.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Button part of a tab Bar
]]--

local Button = require 'game.ui.menu.button'
local Colour = require 'system.colour'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local m = love.mouse


local ButtonTab = {}
ButtonTab.__index = ButtonTab

-- inherit from base class
setmetatable(ButtonTab, {__index = Button})

-- local function forward declaration
local checkPosition, setLook, checkTouchPosition

function ButtonTab.create(index, textKey, image, quad, action, args, font, lightColour, darkColour)
 --     print("CREATING ButtonTab")  -- DEBUG_TAG

    local self = Button.create(textKey, action, args, font)
    self = setmetatable(self, ButtonTab)

    self.active = false
    --
    self.index = index
    self.image = image
    self.quad = quad
    -- colours
    self.lightColour = lightColour
    self.darkColour = darkColour
    self.boxColour = self.lightColour

    return self
end

function ButtonTab:init(x, y)
    -- init base class
    Button.init(self)
    -- size of the icon
    local w, h = 20, 20
    -- Calculate size
    local textW = self.text:getWidth()
    local textH = self.text:getHeight()
    self.size = { w = textW + w + 30, h = textH + 15}
    -- position
    self.pos = { x = x, y = y }
    self.textPos = {
        x = Utils.round(x + (self.size.w - textW + w) / 2),
        y = Utils.round(y + (self.size.h - textH) / 2),
    }
    self.imagePos = {
        x = self.textPos.x - w - 6,
        y = Utils.round(y + (self.size.h - h) / 2)
    }
    --
    setLook(self)
    --
    Button.setHighlight(self, 1, 1, 3, 3)
end

function ButtonTab:update()
    return checkPosition(self.pos, self.size)
end

function ButtonTab:draw()
    local lineW = g.getLineWidth()

    -- frame
    Colour.set(self.lightColour)
    g.setLineWidth(3)
    g.rectangle("line", self.pos.x - 1, self.pos.y - self.extra,
                        self.size.w + 2, self.size.h + 3,
                        2, 2, 10
    )
    -- box
    Colour.set(self.boxColour)
    g.rectangle("fill", self.pos.x, self.pos.y - self.extra,
                        self.size.w, self.size.h + self.extra,
                        2, 2, 10)
    -- image
    Colour.set(Colour.WHITE)
    g.draw(self.image, self.quad, self.imagePos.x, self.imagePos.y - self.extra)
    -- text
    g.draw(self.text, self.textPos.x, self.textPos.y - self.extra)
    -- higlight frame
    if self.selected then
        Button.drawHoverHighlight(self)
    end

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end

function ButtonTab:select(bool)
    self.selected = bool
    setLook(self)
end

function ButtonTab:activate(bool)
    self.selected = bool
    self.active = bool
    setLook(self)
end

-- Input --------------------------------------------------------------------------------

function ButtonTab:controls(tabBar, isReleased, key, navigation, touchX, touchY)
    -- Check for key input
    if isReleased and navigation and key == 'return' and self.selected then
        self:click()
        tabBar:changeSelectedTab(self.index)
        self:select(false)
        return true
    end
    -- Check for mouse click
    if m.isDown(1, 2, 3) then
        -- Check if the click is inside the map
        if checkPosition(self.pos, self.size) then
            self:select(true)
            self:click()
            tabBar:changeSelectedTab(self.index)
            return true
        end
    end
    -- Check for touch input
    if touchX ~= nil and touchY ~= nil then
        if checkTouchPosition(self.pos, self.size, touchX, touchY) then
            self:select(true)
            self:click()
            tabBar:changeSelectedTab(self.index)
            return true
        end
    end
end

function ButtonTab:click()
    if self.action then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        self.action(unpack(self.args))
    end
    self.active = true
    setLook(self)
end

-- Private ------------------------------------------------------------------------------

function setLook(self)
    -- Tab selected
    if self.active then
        self.boxColour = self.lightColour
        self.extra = 3
    -- Tab not selected
    else
        self.boxColour = self.darkColour
        self.extra = 0
    end
end

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


return ButtonTab
