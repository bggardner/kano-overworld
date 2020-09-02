--[[
buttonImage.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Button consistent on an image and an action
]]--

local Button = require 'game.ui.menu.button'
local Colour = require 'system.colour'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local t = love.timer
local m = love.mouse


local ButtonImage = {}
ButtonImage.__index = ButtonImage

-- inherit from base class
setmetatable(ButtonImage, {__index = Button})

-- local function forward declaration
local checkPosition, checkTouchPosition

function ButtonImage.create(action, args, frameColor, scale)
 --     print("CREATING ButtonImage")  -- DEBUG_TAG

    local self = Button.create("", action, args, "")
    self = setmetatable(self, ButtonImage)

    self.quads = {}
    self.enable = true
    -- animation
    self.animating = true
    self.stateTime = 0
    self.imageIdx = 1
    --
    self.frameColor = frameColor
    --
    self.scale = scale or 1

    return self
end

function ButtonImage:load(tileset, tileX, tileY, width, height)
    self.tileset = tileset
    self.size = { w = width, h = height}

    local tilesetW, tilesetH = self.tileset:getWidth(), self.tileset:getHeight()
    self.numFrames = math.floor(tilesetW/width)

    local tile = tileX
    for i = 1, self.numFrames do
        self.quads[i] = g.newQuad(tile, tileY, width, height, tilesetW, tilesetH)
        tile = tile + width
    end
end

function ButtonImage:loadWithQuad(tileset, quad)
    self.tileset = tileset
    local _, _, w, h = quad:getViewport()
    self.size = { w = w, h = h}
    self.numFrames = 1
    self.quads[1] = quad
end

function ButtonImage:init(x, y)
    Button.setPos(self, x, y)
end

function ButtonImage:setHighlight(x, y, w, h)
    Button.setHighlight(self, x, y, w, h)
end

function ButtonImage:update()
    local cTime = t.getTime()
    if self.animating then
        if (cTime - self.stateTime) > 0.05 then
            self.imageIdx = (self.imageIdx % self.numFrames) + 1
            self.stateTime = cTime
            self.animating = self.imageIdx < self.numFrames
        end
    else
        self.imageIdx = 1
        if (cTime - self.stateTime) > 2 then
            self.animating = true
            self.stateTime = cTime
        end
    end
    return checkPosition(self.pos, self.size.w, self.size.h, self.scale)
end

function ButtonImage:draw()
    local lineW = g.getLineWidth()

    -- frame
    if self.frameColor then
        g.setLineWidth(1)
        if self.enable then
            Colour.set(self.frameColor)
        else
            Colour.set(Colour.GREY_DARK)
        end
        g.rectangle("line", self.pos.x - 5, self.pos.y - 5,
                    self.size.w + 10, self.size.w + 10, 2, 2, 10)
    end
    -- set colour
    if self.enable then
        Colour.set(Colour.WHITE)
    else
        Colour.set(self.colours.disabled)
    end
    -- image
    g.draw(self.tileset, self.quads[self.imageIdx], self.pos.x, self.pos.y,
           0, self.scale, self.scale)

    -- Selected highlight
    if self.selected and self.enable then
        self:drawHoverHighlight()
        -- tooltip pop up
        if self.tooltipText then
            self:drawTooltip()
        end
    -- new item highlight
    elseif self.isNew then
        Button.drawIsNewHighlight(self)
    end

    -- resetting graphics
    g.setLineWidth(lineW)
    Colour.reset()
end

-- Getters/Setters ----------------------------------------------------------------------

function ButtonImage:setEnable(enable)
    self.enable = enable
end

function ButtonImage:isSelected()
    return self.selected
end

function ButtonImage:toggleSelected(value)
    if value ~= nil then
        self.selected = value
    else
        self.selected = not self.selected
    end
end

-- Input --------------------------------------------------------------------------------

function ButtonImage:click()
    if self.action and self.enable then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        self.action(unpack(self.args))
    end
end

function ButtonImage:mouseClick()
    if checkPosition(self.pos, self.size.w, self.size.h, self.scale) then
        self:click()
        return true
    end
    return false
end

function ButtonImage:touchClick(touchX, touchY)
    if touchX == nil or touchY == nil then
        return false
    end
    if checkTouchPosition(self.pos, self.size.w, self.size.h, self.scale, touchX, touchY) then
        self:click()
        return true
    end
    return false
end

-- Private ------------------------------------------------------------------------------

function checkPosition(pos, w, h, scale)
    local sw, sh = Utils.getScale()
    local x = pos.x * sw - 5
    local y = pos.y * sh - 5
    w = w * scale * sw + 10
    h = h * scale * sh + 10
    return ((m.getX() >= x) and (m.getX() <= (x + w))) and
           ((m.getY() >= y) and (m.getY() <= (y + h)))
end

function checkTouchPosition(pos, w, h, scale, touchX, touchY)
    local sw, sh = Utils.getScale()
    local x = pos.x * sw - 5
    local y = pos.y * sh - 5
    w = w * scale * sw + 10
    h = h * scale * sh + 10
    return (x <= touchX) and (touchX <= (x + w)) and
           (y <= touchY) and (touchY <= (y + h))
end


return ButtonImage
