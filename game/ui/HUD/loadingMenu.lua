--[[
loadingMenu.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Colour = require 'system.colour'
local Locale = require 'system.locale'
local Utils = require 'system.utils'

local love = love
local g = love.graphics


local LoadingMenu = {}
LoadingMenu.__index = LoadingMenu

local speed = 80
local max = 100


function LoadingMenu.create()
 --     print("CREATING Loading Menu")  -- DEBUG_TAG

    local self = setmetatable({}, LoadingMenu)

    self.current = 0
    self.text = ''

    return self
end

function LoadingMenu:load()

end

function LoadingMenu:update(dt, gameStates)
    self.current = math.min(self.current + speed * dt, max)
    if self:isComplete() then
        -- Launch command
        gameStates:launchApp(self.command)
    end
end

function LoadingMenu:draw()
    local lineW = g.getLineWidth()

    -- shadow
    g.setLineWidth(6)
    Colour.set(Colour.BLACK, 120)
    g.rectangle(
        "fill", self.posWin.x - 2, self.posWin.y + 10,
        self.sizeWin.w + 4, self.sizeWin.h, 2, 2, 10
    )
    -- background
    Colour.set(Colour.GREY_DARK)
    g.rectangle(
        "fill", self.posWin.x, self.posWin.y, self.sizeWin.w, self.sizeWin.h, 2, 2, 10
    )
    -- outter border
    g.setLineWidth(4)
    Colour.set(Colour.ORANGE_PALE)
    g.rectangle(
        "line", self.posWin.x, self.posWin.y, self.sizeWin.w, self.sizeWin.h, 2, 2, 10
    )
    -- inner border
    g.setLineWidth(4)
    Colour.set(Colour.ORANGE_DARK)
    g.rectangle(
        "line", self.posWin.x + 4, self.posWin.y + 4,
        self.sizeWin.w - 8, self.sizeWin.h - 8, 2, 2, 10
    )
    -- mid border
    g.setLineWidth(4)
    Colour.set(Colour.ORANGE)
    g.rectangle(
        "line", self.posWin.x + 2, self.posWin.y + 2,
        self.sizeWin.w - 4, self.sizeWin.h - 4, 2, 2, 10
    )
    -- Bar
    local level = Utils.scale(self.current, 0, self.sizeBar.w, 0, max)
    -- Bar level top
    Colour.set(Colour.ORANGE_PALE)
    g.rectangle("fill", self.posBar.x, self.posBar.y, level, self.sizeBar.h)
    -- Bar level bottom
    Colour.set(Colour.ORANGE)
    g.rectangle(
        "fill", self.posBar.x, self.posBar.y + self.sizeBar.h, level, self.sizeBar.h
    )
    -- Bar outer border
    Colour.set(Colour.WHITE)
    g.setLineWidth(1)
    g.rectangle(
        "line", self.posBar.x - 6, self.posBar.y - 6,
        self.sizeBar.w + 12, (self.sizeBar.h * 2) + 12, 2, 2, 10
    )
    -- Bar inner border
    g.rectangle(
        "line", self.posBar.x - 3, self.posBar.y - 3,
        self.sizeBar.w + 6, (self.sizeBar.h * 2) + 6, 2, 2, 10
    )
    -- text
    g.draw(self.text, self.posTxt.x, self.posTxt.y)

    -- reset graphics
    Colour.reset()
    g.setLineWidth(lineW)
end

function LoadingMenu:activate(cmd)
    self.command = cmd

    -- Set position
    local sx, sy = Utils.getScale()
    local mapWidth = g.getWidth() / sx
    local mapHeight = g.getHeight() / sy

    self.text = g.newText(
        g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text("loading")
    )

    self.sizeBar = {w = 200, h = 7}
    self.sizeWin = {w = self.sizeBar.w + self.text:getWidth() + 55, h = 80}

    -- Window
    local posX = Utils.round((mapWidth - self.sizeWin.w) / 2)
    local posY = Utils.round((mapHeight - self.sizeWin.h) / 2)
    self.posWin = {x = posX, y = posY}

    -- Text
    posX = self.posWin.x + 20
    posY = Utils.round(self.posWin.y + (self.sizeWin.h - self.text:getHeight()) / 2)
    self.posTxt = {x = posX, y = posY}

    -- Bar
    posX = self.posWin.x + self.sizeWin.w - self.sizeBar.w - 20
    posY = Utils.round(self.posWin.y + (self.sizeWin.h - 6 - self.sizeBar.h) / 2)
    self.posBar = {x = posX, y = posY}

end

function LoadingMenu:isComplete()
    return (self.current == max)
end


return LoadingMenu
