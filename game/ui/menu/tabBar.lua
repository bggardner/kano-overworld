--[[
tabBar.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Bar with tab buttons
]]--


local ButtonTab = require 'game.ui.menu.buttonTab'
local Colour = require 'system.colour'
local Utils = require 'system.utils'

local love = love
local g = love.graphics

local TabBar = {}
TabBar.__index = TabBar

-- local function forward declaration
local changeSelected

function TabBar.create(menu)
 --     print("CREATING TabBar")  -- DEBUG_TAG

    local self = setmetatable({}, TabBar)

    self.menu = menu
    self.buttons = {}
    self.navigation = false

    return self
end

function TabBar:load(tileset, callback, x, y)
 --     print("LOADING TabBar")  -- DEBUG_TAG

    self.x = x + 10
    self.y = y - 40
    -- Button Minimap
    local textKey = "map"
    local action = callback
    local args = {self.menu, self.menu.STATE_MINIMAP}
    local font = g_resMngr.DEFAULT_FONT_16
    local tileX, tileY = 200, 160
    local w, h = 23, 23
    local quad = g.newQuad(tileX, tileY, w, h, Utils.getSize(tileset))
    local minimap = ButtonTab.create(1, textKey, tileset, quad, action, args, font,
                                     Colour.GREEN_FOREST, Colour.GREEN_FOREST_DARK)
    table.insert(self.buttons, minimap)
    -- Button Quests
    textKey = "quests"
    args = {self.menu, self.menu.STATE_QUESTS}
    tileX, tileY = 223, 160
    w, h = 23, 23
    self.questQuad = g.newQuad(tileX, tileY, w, h, Utils.getSize(tileset))
    local quests = ButtonTab.create(2, textKey, tileset, self.questQuad, action, args,
                                    font, Colour.LAVENDER, Colour.LAVENDER_DARK)
    table.insert(self.buttons, quests)
    tileX = 246
    self.quadNewQuest = g.newQuad(tileX, tileY, w, h, Utils.getSize(tileset))
    -- Button Codex
    textKey = "codex"
    args = {self.menu, self.menu.STATE_CODEX}
    tileX, tileY = 269, 160
    w, h = 23, 23
    quad = g.newQuad(tileX, tileY, w, h, Utils.getSize(tileset))
    local codex = ButtonTab.create(3, textKey, tileset, quad, action, args, font,
                                   Colour.BLUE_SEA, Colour.BLUE_SEA_DARK)
    table.insert(self.buttons, codex)
end

function TabBar:update()
    local old = self.selected

    for i = 1, #self.buttons do
        if self.buttons[i]:update() and i ~= self.selected then
            self.buttons[self.selected]:select(false)
            self.selected = i
            break
        end
    end
    if self.selected ~= old then
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
        self.buttons[old]:select(false)
        self.buttons[self.selected]:select(true)
        self.menu:changeNavigation(self.menu.NAV_TABBAR)
    end
end

function TabBar:draw()
    for i,_ in ipairs(self.buttons) do
        self.buttons[i]:draw()
    end
end

function TabBar:activate(index)
    -- Select first tab
    changeSelected(self, index)
    self.buttons[1]:select(false)
    -- Init buttons
    local x = self.x
    for i = 1, #self.buttons do
        self.buttons[i]:init(x, self.y)
        x = x + self.buttons[i]:getSize().w + 10
    end
end

function TabBar:changeSelectedTab(index)
    changeSelected(self, index)
    if self.navigation then
        self.menu:changeNavigation(self.menu.NAV_INSIDE)
    end
end

-- Input --------------------------------------------------------------------------------

function TabBar:controls(isReleased, key, touchX, touchY)
    for i,_ in ipairs(self.buttons) do
        if self.buttons[i]:controls(self, isReleased, key, self.navigation, touchX, touchY) then
            return true
        end
    end
    if isReleased and self.navigation then
        self:keysNavigation(key)
    end
    return false
end

function TabBar:keysNavigation(key)
    local old = self.selected
    -- Left
    if key == 'left' or key == 'a' then
        if self.selected == 1 then
            self.menu:changeNavigation(self.menu.NAV_DASHBOARD)
        end
        self.selected = math.max(1, self.selected - 1)
    -- Right
    elseif key == 'right' or key == 'd' then
        self.selected = math.min(self.selected + 1, #self.buttons)
    -- Down
    elseif key == 'down' or key == 's' then
        self:changeSelectedTab(self.selected)
        self.buttons[self.selected]:click()
        self.menu:changeNavigation(self.menu.NAV_INSIDE)
    end
    if old ~= self.selected then
        self.buttons[old]:select(false)
        self.buttons[self.selected]:select(true)
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
    end
end

function TabBar:setNavigation(navigate)
    self.navigation = navigate
    -- do not highlight any button if we are not navigating
    if not navigate then
        for i = 1, #self.buttons do
            self.buttons[i]:select(false)
        end
    else
        self.buttons[self.selected]:select(true)
    end
end

-- Private ------------------------------------------------------------------------------

function changeSelected(self, id)
    for i = 1, #self.buttons do
        if i ~= id then
            self.buttons[i]:activate(false)
        else
            self.buttons[i]:select(true)
            self.buttons[i]:activate(true)
            self.selected = id
        end
    end
end


return TabBar
