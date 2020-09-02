--[[
codexMenu.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Codex menu
]]--


local Button = require 'game.ui.menu.button'
local ButtonImage = require 'game.ui.menu.buttonImage'
local MenuScroll = require 'game.ui.menu.menuScroll'
local SearchInput = require 'game.ui.menu.searchInput'

local Colour = require 'system.colour'
local Locale = require 'system.locale'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local m = love.mouse


local CodexMenu = {}
CodexMenu.__index = CodexMenu

-- inherit from base class MenuScroll
setmetatable(CodexMenu, {__index = MenuScroll})

-- local function forward declaration
local drawCodexElement, populateList, changeView, calculateProgressBar
local updateItemText, calculateLastElement


function CodexMenu.create(menu, gameStates)
 --     print("CREATING CodexMenu")  -- DEBUG_TAG

    local self = MenuScroll.create(menu)
    self = setmetatable(self, CodexMenu)

    self.gameStates = gameStates
    self.navigation = false
    self.gridView = true
    -- button back
    self.buttonBack = Button.create("backCodex", changeView, {self},
                                    g_resMngr.DEFAULT_FONT_16, Colour.ORANGE_KANO,
                                    Colour.GREY_DARK2, Colour.ORANGE_KANO)
    -- navigate buttons
    self.buttonLeft = ButtonImage.create(self.previousUnlockElement, {self}, Colour.WHITE)
    self.buttonRight = ButtonImage.create(self.nextUnlockElement, {self}, Colour.WHITE)
    -- search input
    self.searchInput = SearchInput.create(self.search, {self})

    return self
end

function CodexMenu:load(tileset, x, y, w, h, barSize)
 --     print("LOADING CodexMenu")  -- DEBUG_TAG

    MenuScroll.load(self, tileset, x, y, w, h)
    -- button back
    self.buttonBack:init()
    self.buttonBack:setPos(188, 117)
    -- button left
    local tileX, tileY = 140, 26
    local width, height = 10, 10
    self.buttonLeft:load(tileset, tileX, tileY, width, height)
    self.buttonLeft:init(730, 125)
    -- button left
    tileX, tileY = 140, 37
    self.buttonRight:load(tileset, tileX, tileY, width, height)
    self.buttonRight:init(755, 125)
    -- search input
    self.searchInput:load(tileset)
    self.searchInput:init(550, 115)
    -- text objects
    self.title = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_24], "")
    self.text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], "")
    self.empty = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
                           Locale.text("codexEmpty"))
    -- completed bar
    self.bar = { x = 0, y = 0, w = 0, h = barSize, text = ""}
    self.bar.x = x + 2
    self.bar.y = y + h + 6
    self.bar.text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], "")
end

function CodexMenu:update()
    -- update grid
    if self.gridView then
        local selected = false
        local last = calculateLastElement(self)
        for i = self.firstElement, last do
            if self.elements[i].unlocked and self.elements[i].button:update() then
                if not self.elements[i].button.selected then
                    g_resMngr.playSound(g_resMngr.SFX_MOUSE)
                end
                self.elements[self.selected].button:toggleSelected(false)
                self.elements[i].button:toggleSelected(true)
                self.selected = i
                selected = true
            end
        end
        if selected and not self.navigation then
            self.menu:changeNavigation(self.menu.NAV_INSIDE)
        end
        --
        self.searchInput:update()
    -- update item view
    else
        if self.buttonBack:update() and not self.navigation then
            self.menu:changeNavigation(self.menu.NAV_INSIDE)
        end
    end
end

function CodexMenu:draw()
    local lineW = g.getLineWidth()

    -- grid view
    if self.gridView then
        -- draw base class
        MenuScroll.draw(self)
        -- is list empty?
        if #self.elements == 0 then
            local x = self.pos.x + (self.size.w - self.empty:getWidth()) / 2
            local y = self.pos.y + (self.size.h - self.empty:getHeight()) / 2
            g.draw(self.empty, x, y)
        end
    -- item view
    else
        drawCodexElement(self)
        -- back button
        self.buttonBack:draw()
        -- left button
        self.buttonLeft:draw()
        -- right button
        self.buttonRight:draw()
    end
    -- completed bar
    if self.bar.w > 0 then
        Colour.set(Colour.ORANGE_KANO)
        g.rectangle("fill", self.bar.x, self.bar.y, self.bar.w, self.bar.h, 3, 3, 5)
    end
    Colour.set(Colour.WHITE)
    g.draw(self.bar.text, self.bar.x + 4, self.bar.y + 1)

    -- resetting graphics
    g.setLineWidth(lineW)
    Colour.reset()
end

function CodexMenu:drawTopBar()
    local lineW = g.getLineWidth()

    -- grid view
    if self.gridView then
        -- search input
        self.searchInput:draw()
    end

    local padding = 12
    local x = self.pos.x + padding
    local y = self.pos.y
    -- White line
    Colour.set(Colour.WHITE)
    y = y + 50
    g.setLineWidth(2)
    g.line(x, y, x + (self.size.w - padding * 2), y)

    -- resetting graphics
    g.setLineWidth(lineW)
    Colour.reset()
end

function CodexMenu:drawElements(element, x, y, width)
    width = width - 8 -- padding between elements
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", x, y, width, width, 5, 5, 10)
    Colour.set(Colour.WHITE)
    element.button:init(x + 7, y + 7)
    element.button:setTooltipTextKey(element.name)
    element.button:setHighlight(6, 6, 42, 42)
    element.button:setEnable(element.unlocked == true)
    element.button:setIsNew(element.isNew == true)
    element.button:setDisabledColour(Colour.BLACK_OFF)
    element.button:draw()
end

function CodexMenu:activate()
    MenuScroll.activate(self, 4, 8)
    self.gridView = true
    self.buttonBack:init()
    -- list
    populateList(self)
    self.elements[self.selected].button:toggleSelected(true)
    -- Calculate completed bar dimension
    calculateProgressBar(self)
end

function CodexMenu:deactivate()
    self:reset()
end

function CodexMenu:search(filter)
    self.gameStates:setCodexFilter(filter)
    self.selected = 1
    -- populate again
    populateList(self)
end

function CodexMenu:searchIsSelected()
    return self.searchInput:isSelected()
end

function CodexMenu:reset()
    local last = calculateLastElement(self)
    for i = self.firstElement, last do
        self.elements[i].button:toggleSelected(false)
    end
    --
    self.gridView = true
    --
    self.searchInput:reset()
    --
    self:search("")
end

-- Input --------------------------------------------------------------------------------

function CodexMenu:controls(isReleased, key, mousebutton, touchX, touchY)
    -- grid view
    if self.gridView then
        local oldSelected = self.selected
        if self.navigation then
            MenuScroll.controls(self, isReleased, key, mousebutton)
            -- ENTER
            if isReleased and not self.searchInput:isSelected() and key == 'return' then
                changeView(self)
            end
        end
        -- Check for mouse click
        if m.isDown(1, 2, 3) then
            MenuScroll.click(self)
            -- items
            local last = calculateLastElement(self)
            for i = self.firstElement, last do
                self.elements[i].button:mouseClick()
            end
        elseif touchX ~= nil and touchY ~= nil then
            MenuScroll.click(self, touchX, touchY)
            -- items
            local last = calculateLastElement(self)
            for i = self.firstElement, last do
                if self.elements[i].button:touchClick(touchX, touchY) then
                    self.selected = i
                    updateItemText(self)
                    break
                end
            end
        end
        if oldSelected ~= self.selected then
            self.elements[oldSelected].button:toggleSelected(false)
            self.elements[self.selected].button:toggleSelected(true)
        end
        -- searchInput
        self.searchInput:controls(isReleased, key, mousebutton)
    -- item view
    else
        if self.navigation then
            self.buttonBack:controls(isReleased, key, mousebutton, touchX, touchY)
            -- left
            if isReleased and (key == 'left' or key == 'a') then
                self:previousUnlockElement()
            -- right
            elseif isReleased and (key == 'right' or key == 'd') then
                self:nextUnlockElement()
            end
             -- Check for mouse click
            if m.isDown(1, 2, 3) then
                self.buttonLeft:mouseClick()
                self.buttonRight:mouseClick()
            end
            -- Check for touch click
            if touchX ~= nil and touchY ~= nil then
                self.buttonLeft:touchClick(touchX, touchY)
                self.buttonRight:touchClick(touchX, touchY)
            end
        end
    end
end

function CodexMenu:setNavigation(navigate)
    self.navigation = navigate
end

function CodexMenu:upNavigation()
    self.menu:changeNavigation(self.menu.NAV_TABBAR)
    self.buttonBack:select(false)
    --
    local last = calculateLastElement(self)
    for i = self.firstElement, last do
        self.elements[i].button:toggleSelected(false)
    end
    --
    self.searchInput:reset()
end

function CodexMenu:nextUnlockElement()
    if self.searchInput:isSelected() then
        return
    end

    local safeGuardIter = 0

    -- find the next unlocked item "to the right"
    repeat
        self.selected = self.selected % #self.elements + 1
        safeGuardIter = safeGuardIter + 1
    until self.elements[self.selected].unlocked or safeGuardIter > 2 * #self.elements

    if not self.gridView then
        updateItemText(self)
    end
end

function CodexMenu:previousUnlockElement()
    if self.searchInput:isSelected() then
        return
    end

    local safeGuardIter = 0

    -- find the next unlocked item "to the left"
    repeat
        self.selected = self.selected - 1
        if self.selected == 0 then
            self.selected = #self.elements
        end
        safeGuardIter = safeGuardIter + 1
    until self.elements[self.selected].unlocked or safeGuardIter > 2 * #self.elements

    if not self.gridView then
        updateItemText(self)
    end
end

function CodexMenu:upUnlockElement(canUpNavigation)
    if self.searchInput:isSelected() then
        return
    end

    if self.selected > self.matrixSize.col then
        self.selected = self.selected - self.matrixSize.col
        if not self.elements[self.selected].unlocked then
            self:nextUnlockElement()
        end
    -- check if changing navigation to tabBar
    elseif canUpNavigation then
        self:upNavigation()
        return
    end
end

function CodexMenu:downUnlockElement()
    if self.searchInput:isSelected() then
        return
    end

    if self.selected < (#self.elements - self.matrixSize.col + 1) then
        self.selected = self.selected + self.matrixSize.col
        if not self.elements[self.selected].unlocked then
            self:nextUnlockElement()
        end
    end
end

-- Private ------------------------------------------------------------------------------

function drawCodexElement(self)
    -- background
    Colour.set(Colour.GREY_DARK2)
    g.rectangle("fill", self.pos.x, self.pos.y, self.size.w, self.size.h, 5, 5, 10)
    -- top bar
    self:drawTopBar()
    -- thumbnail
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", 190, 170, 120, 120, 5, 5, 10)
    Colour.set(Colour.WHITE)
    local tileset = g_resMngr.images[g_resMngr.CODEX_ELEMENTS]
    g.draw(tileset, self.elements[self.selected].quad, 200, 180, 0, 6, 6)
    -- title
    Colour.set(Colour.ORANGE_KANO)
    g.draw(self.title, 320, 170)
    -- content
    Colour.set(Colour.WHITE)
    g.draw(self.text, 320, 210)
end

function changeView(self)
    -- to item view
    if self.gridView then
        updateItemText(self)
        self.searchInput:reset()
    -- to grid view
    else
        self:search('')
        local last = calculateLastElement(self)
        for i = self.firstElement, last do
            self.elements[i].button:toggleSelected(false)
        end
    end
    --
    self.gridView = not self.gridView
end

function populateList(self)
    local list = self.gameStates:getCodexElements()
    local tileset = g_resMngr.images[g_resMngr.CODEX_ELEMENTS]
    -- remove all elements in current list
    for i=1, #self.elements do
        self.elements[i] = nil
    end
    self.elements = {}
    -- populate the new list
    for i=1, #list do
        local button = ButtonImage.create(changeView, {self}, nil, 3)
        button:loadWithQuad(tileset, list[i].quad)
        button:init(0, 0)
        self.elements[i] = {button = button,
                            name = list[i].name,
                            description = list[i].description,
                            quad = list[i].quad,
                            unlocked = list[i].unlocked,
                            isNew = list[i].isNew}
    end
end

function updateItemText(self)
    Utils.setText(self.title, string.upper(Locale.text(self.elements[self.selected].name)))
    -- wrap description text
    local text = Locale.text(self.elements[self.selected].description)
    local _, lines = g_resMngr:getWrap(g_resMngr.DEFAULT_FONT_16, text, 450)
    text = lines[1] .. "\n"
    for i = 2, #lines do
        text = text .. lines[i] .. "\n"
    end
    Utils.setText(self.text, text)
    self.elements[self.selected].isNew = false
    self.gameStates:setCodexElementIsNew(self.selected, false)
end

function calculateProgressBar(self)
    local discovered, total = self.gameStates:getCodexProgress()
    local percentage = math.floor((discovered / total) * 100)
    self.bar.w = (percentage * (self.size.w - 4)) / 100
    Utils.setText(
        self.bar.text,
        string.format("%d/%d " .. Locale.text("codexDiscovered"), discovered, total)
    )
end

function calculateLastElement(self)
    return math.min(#self.elements,
                    self.firstElement + (self.matrixSize.row * self.matrixSize.col))
end

return CodexMenu
