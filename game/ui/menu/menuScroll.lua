--[[
menuScroll.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Matrix of objects to be displayed as a menu
]]--


local ButtonImage = require 'game.ui.menu.buttonImage'
local Colour = require 'system.colour'

local love = love
local g = love.graphics

local MenuScroll = {}
MenuScroll.__index = MenuScroll

-- local function forward declaration
local drawHoverHighlight

local BAR_SPACE = 60
local PADDING = 10

function MenuScroll.create(menu)
 --     print("CREATING MenuScroll")  -- DEBUG_TAG

    local self = setmetatable({}, MenuScroll)

    self.menu = menu
    self.elements = {}
    self.navigation = false
    -- Scroll buttons
    self.buttonUp = ButtonImage.create(nil, nil, Colour.WHITE)
    self.buttonDown = ButtonImage.create(nil, nil, Colour.WHITE)

    return self
end

function MenuScroll:load(tileset, x, y, w, h)
 --     print("LOADING MenuScroll")  -- DEBUG_TAG

    self.pos = {x = x, y = y}
    self.size = {w = w, h = h}
    -- up button
    local tileX, tileY = 140, 48
    local width, height = 10, 10
    self.buttonUp:load(tileset, tileX, tileY, width, height)
    self.buttonUp:init(x + w - 25, y + BAR_SPACE + 7)
    -- down button
    tileX, tileY = 140, 59
    self.buttonDown:load(tileset, tileX, tileY, width, height)
    self.buttonDown:init(x + w - 25, y + h - (height * 3 + 7))
end

function MenuScroll:draw()
    -- background
    Colour.set(Colour.GREY_DARK2)
    g.rectangle("fill", self.pos.x, self.pos.y, self.size.w, self.size.h, 5, 5, 10)

    self:drawTopBar()
    -- visible elements
    local x = self.pos.x + PADDING
    local y = self.pos.y + BAR_SPACE
    local idx = self.firstElement
    --local width = self.elementSize.w - (PADDING * 2)
    for _ = 1, self.matrixSize.row do
        for _ = 1, self.matrixSize.col do
            -- Draw selected frame
            if self.navigation and self.currentOption == 0 and self.selected == idx and
                #self.elements > 0 then
                drawHoverHighlight(x - (PADDING / 2), y - 3,
                                   self.elementSize.w, self.elementSize.h)
            end
            -- Draw element
            if self.elements[idx] then
                self:drawElements(self.elements[idx], x, y, self.elementSize.w)
            end
            x = x + self.elementSize.w
            idx = idx + 1
        end
        -- start new line
        x = self.pos.x + PADDING
        y = y + self.elementSize.h
    end
    -- up button
    self.buttonUp:draw()
    -- down button
    self.buttonDown:draw()
end

function MenuScroll:activate(rows, columns)
    self.matrixSize = {row = rows, col = columns}
    self.elementSize = {w = math.floor((self.size.w - 50) / columns),
                        h = math.floor((self.size.h - BAR_SPACE) / rows)}
    self.firstElement = 1
    self.selected = 1
    self:setScrollButtons()
end

function MenuScroll:setScrollButtons()
    self.buttonUp:setEnable(self.selected >= self.firstElement + self.matrixSize.col)
    self.buttonDown:setEnable(self.selected + self.matrixSize.col <= #self.elements)
end

-- Input --------------------------------------------------------------------------------

function MenuScroll:controls(isReleased, key, mousebutton)
    if isReleased and (#self.elements >= 0) then
        MenuScroll.keysNavigation(self, key)
    end
end

function MenuScroll:keysNavigation(key)
    local old = self.selected
    -- Left
    if key == 'left' or key == 'a' then
        self:previousUnlockElement()
    -- Right
    elseif key == 'right' or key == 'd' then
        self:nextUnlockElement()
    -- Up
    elseif key == 'up' or key == 'w' then
        self:upUnlockElement(true)
    -- Down
    elseif key == 'down' or key == 's' then
        self:downUnlockElement()
    end
    -- current element has changed
    if old ~= self.selected then
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
        local lastElem = self.firstElement + (self.matrixSize.row * self.matrixSize.col) - 1
        -- increment page
        if self.selected > lastElem then
            self.firstElement = self.firstElement + self.matrixSize.col
        -- decrement page
        elseif self.selected < self.firstElement then
            self.firstElement = self.firstElement - self.matrixSize.col
        end
        self:setScrollButtons()
    end
end

function MenuScroll:click(touchX, touchY)
    local old = self.selected
    -- Check for button up click
    if self.buttonUp.enable and (self.buttonUp:mouseClick() or self.buttonUp:touchClick(touchX, touchY)) then
        self:upUnlockElement(false)
    end
    -- Check for button down click
    if self.buttonDown.enable and (self.buttonDown:mouseClick() or self.buttonDown:touchClick(touchX, touchY)) then
        self:downUnlockElement()
    end
    if old ~= self.selected then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        self:setScrollButtons()
        return true
    end
    return false
end

function MenuScroll:nextUnlockElement()
    self.selected = math.min(#self.elements, self.selected + 1)
end

function MenuScroll:previousUnlockElement()
    self.selected = math.max(1, self.selected - 1)
end

function MenuScroll:upUnlockElement(canUpNavigation)
    if self.selected > self.matrixSize.col then
        self.selected = self.selected - self.matrixSize.col
    -- check if changing navigation to tabBar
    elseif canUpNavigation then
        self:upNavigation()
        return
    end
    self.selected = math.max(1, self.selected)
end

function MenuScroll:downUnlockElement()
    if self.selected < (#self.elements - self.matrixSize.col + 1) then
        self.selected = self.selected + self.matrixSize.col
    end
    self.selected = math.min(#self.elements, self.selected)
end

-- Private ------------------------------------------------------------------------------

function drawHoverHighlight(x, y, w, h)
    g.setLineWidth(6)
    Colour.set(Colour.WHITE)
    g.rectangle("line", x - 1, y - 1, w, h, 2, 2, 10)
    g.setLineWidth(2)
    Colour.set(Colour.ORANGE_KANO)
    g.rectangle("line", x - 1, y - 1, w, h, 2, 2, 10)
end


return MenuScroll
