--[[
questsMenu.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Quest info menu
]]--


local Button = require 'game.ui.menu.button'
local MenuScroll = require 'game.ui.menu.menuScroll'

local Colour = require 'system.colour'
local Locale = require 'system.locale'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local m = love.mouse


local QuestsMenu = {}
QuestsMenu.__index = QuestsMenu

-- inherit from base class MenuScroll
setmetatable(QuestsMenu, {__index = MenuScroll})

-- local function forward declaration
local calculateProgressBar, onActiveQuests, onCompletedQuests, navigateInside,
      drawActiveQuests, drawCompleteQuests

local ICON_SIZE = 23

function QuestsMenu.create(menu)
 --     print("CREATING QuestsMenu")  -- DEBUG_TAG

    local self = MenuScroll.create(menu)
    self = setmetatable(self, QuestsMenu)

    self.textObject = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], "")
    -- Button Active Quests
    local textKey = "activeQuests"
    local args = { self }
    local font = g_resMngr.DEFAULT_FONT_16
    local boxColor = Colour.ORANGE_KANO
    local shadowColor = Colour.GREY_DARK2
    local frameColor = Colour.ORANGE_KANO
    self.buttonActive = Button.create(
        textKey, onActiveQuests, args, font, boxColor, shadowColor, frameColor
    )
    -- Button Completed Quests
    textKey = "completedQuests"
    boxColor = Colour.GREY_DARK2
    frameColor = Colour.WHITE
    self.buttonCompleted = Button.create(
        textKey, onCompletedQuests, args, font, boxColor, shadowColor, frameColor
    )

    return self
end

function QuestsMenu:load(tileset, x, y, w, h, barSize)
 --     print("LOADING QuestsMenu")  -- DEBUG_TAG

    MenuScroll.load(self, tileset, x, y, w, h)

    -- minimap icon
    local tileX, tileY = 200, 160
    local quad = g.newQuad(tileX, tileY, ICON_SIZE, ICON_SIZE, Utils.getSize(tileset))
    self.mapIcon = {image = tileset, quad = quad}
    -- quest icon
    tileX, tileY = 223, 160
    quad = g.newQuad(tileX, tileY, ICON_SIZE, ICON_SIZE, Utils.getSize(tileset))
    self.questIcon = {image = tileset, quad = quad}
    -- Completed bar
    self.bar = { x = 0, y = 0, w = 0, h = barSize, text = ""}
    self.bar.x = x + 2
    self.bar.y = y + h + 6
end

function QuestsMenu:update()
    local old = self.currentOption

    -- update button active
    local selected = self.buttonActive:update()
    if selected then
        self.buttonCompleted:select(false)
        self.currentOption = 1
    end
    -- update button completed
    selected = self.buttonCompleted:update()
    if selected then
        self.buttonActive:select(false)
        self.currentOption = 2
    end

    if self.currentOption ~= old then
        self.menu:changeNavigation(self.menu.NAV_INSIDE)
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
    end
end

function QuestsMenu:draw()
    local lineW = g.getLineWidth()

    -- draw base class
    MenuScroll.draw(self)
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

function QuestsMenu:drawTopBar()
    local lineW = g.getLineWidth()

    local padding = 12
    local x = self.pos.x + padding
    local y = self.pos.y
    -- draw buttons
    self.buttonActive:draw()
    self.buttonCompleted:draw()
    -- White line
    Colour.set(Colour.WHITE)
    y = y + 50
    g.setLineWidth(2)
    g.line(x, y, x + (self.size.w - padding * 2), y)

    -- resetting graphics
    g.setLineWidth(lineW)
    Colour.reset()
end

function QuestsMenu:drawElements(quest, x, y, width)
    if self.elements == self.questInfo.activeQuests then
        drawActiveQuests(self, quest, x, y, width)
    else
        drawCompleteQuests(self, quest, x, y, width)
    end
end

function QuestsMenu:activate(gameStates, menu)
    MenuScroll.activate(self, 3, 1)

    -- Get Quest info
    self.questInfo = gameStates:getQuestInfo()
    -- Convert mapId into area name
    for _, quest in ipairs(self.questInfo.activeQuests) do
        if not quest.area then
            local area = menu:getAreaFromFilename(quest.mapId)
            quest.area = g.newText(
                g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text(area)
            )
        end
    end
    for _, quest in ipairs(self.questInfo.completeQuests) do
        if not quest.area then
            local area = menu:getAreaFromFilename(quest.mapId)
            quest.area = g.newText(
                g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text(area)
            )
        end
    end
    -- Start the view in active quests
    self.elements = self.questInfo.activeQuests
    -- Init buttons
    self.currentOption = 1
    local buttonX = self.pos.x + 12
    local buttonY = self.pos.y + 12
    self.buttonActive:init()
    self.buttonActive:setPos(buttonX, buttonY)
    self.buttonActive:select(true)
    self.buttonActive:setColour(Colour.ORANGE_KANO, Colour.ORANGE_KANO)
    buttonX = buttonX + self.buttonActive:getSize().w + 12
    self.buttonCompleted:init()
    self.buttonCompleted:setPos(buttonX, buttonY)
    self.buttonCompleted:select(false)
    self.buttonCompleted:setColour(Colour.GREY_DARK2, Colour.WHITE)
    -- Calculate completed bar dimension
    calculateProgressBar(self)
end

-- Input --------------------------------------------------------------------------------

function QuestsMenu:controls(isReleased, key, mousebutton, touchX, touchY)
    if self.navigation then
        -- Navigation of elements
        if self.currentOption == 0 then
            MenuScroll.controls(self, isReleased, key, mousebutton, touchX, touchY)
        -- Navigation of active / complete buttons
        else
            if self.buttonActive:controls(isReleased, key, mousebutton, touchX, touchY) or
               self.buttonCompleted:controls(isReleased, key, mousebutton, touchX, touchY) then
                return
            end
            if isReleased then
                self:keysNavigation(key)
            end
        end
    end
    -- Check for mouse click
    if (m.isDown(1, 2 ,3) or (touchX ~= nil and touchY ~= nil)) and (#self.elements > 0) then
        if MenuScroll.click(self, touchX, touchY) and self.currentOption ~= 0 then
            navigateInside(self)
        end
    end
end

function QuestsMenu:keysNavigation(key)
    local old = self.currentOption
    -- Left
    if key == 'left' or key == 'a' then
        self.currentOption = 1
        self.buttonActive:select(true)
        self.buttonCompleted:select(false)
    -- Right
    elseif key == 'right' or key == 'd' then
        self.currentOption = 2
        self.buttonActive:select(false)
        self.buttonCompleted:select(true)
    end
    if old ~= self.currentOption then
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
        return
    end
    -- Down
    if key == 'down' or key == 's' then
        if self.currentOption == 1 and
           self.elements == self.questInfo.completeQuests then
            onActiveQuests(self)
        elseif self.currentOption == 2 and
               self.elements == self.questInfo.activeQuests then
            onCompletedQuests(self)
        end
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
    elseif key == 'up' or key == 'w' then
        self:upNavigation()
    end
end

function QuestsMenu:setNavigation(navigate)
    self.navigation = navigate
    if not navigate then
        -- Top bar buttons
        self.buttonActive:select(false)
        self.buttonCompleted:select(false)
    else
        MenuScroll.setScrollButtons(self)
    end
end

function QuestsMenu:upNavigation()
    if self.currentOption == 0 then
        self.currentOption = 1
        self.buttonActive:select(true)
        self.buttonCompleted:select(false)
    else
        self.menu:changeNavigation(self.menu.NAV_TABBAR)
        -- Scroll buttons
        self.buttonUp:setEnable(false)
        self.buttonDown:setEnable(false)
    end
end

-- Private ------------------------------------------------------------------------------

function onActiveQuests(self)
    self.elements = self.questInfo.activeQuests
    self.buttonActive:setColour(Colour.ORANGE_KANO, Colour.ORANGE_KANO)
    self.buttonCompleted:setColour(Colour.GREY_DARK2, Colour.WHITE)

    navigateInside(self)
    calculateProgressBar(self)
end

function onCompletedQuests(self)
    self.elements = self.questInfo.completeQuests
    self.buttonActive:setColour(Colour.GREY_DARK2, Colour.WHITE)
    self.buttonCompleted:setColour(Colour.ORANGE_KANO, Colour.ORANGE_KANO)

    navigateInside(self)
    calculateProgressBar(self)
end

function navigateInside(self)
    self.firstElement = 1
    self.selected = 1
    self.currentOption = 0
    -- Top bar buttons
    self.buttonActive:select(false)
    self.buttonCompleted:select(false)
    MenuScroll.setScrollButtons(self)
end

function drawActiveQuests(self, quest, x, y, width)
    local height = self.textObject:getHeight() + 5
    -- background
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", x - 2, y, width - 10, height * 3 + 2, 2, 2, 10)
    x = x + 3
    y = y + 3
    -- title
    Colour.set(Colour.ORANGE_KANO)
    g.draw(self.questIcon.image, self.questIcon.quad, x - 2, y)
    Utils.setText(self.textObject, string.upper(Locale.text(quest.title)))
    g.draw(self.textObject, x + ICON_SIZE + 5, y)
    y = y + height - 1
    -- rules completed
    Utils.setText(self.textObject, (quest.cRule - 1) .. " / ".. #quest.rules)
    local ruleWidth = self.textObject:getWidth() + 8
    Colour.set(Colour.GREEN_BRIGHT)
    g.rectangle("fill", x, y, ruleWidth, self.textObject:getHeight(), 2, 2, 10)
    Colour.set(Colour.WHITE)
    g.draw(self.textObject, x + 5, y)
    -- Description
    local text = Locale.text(quest.rules[quest.cRule].help)
    Utils.setText(self.textObject, text)
    g.draw(self.textObject, x + ruleWidth + 7, y)
    y = y + height - 1
    -- Map
    if quest.area then
        g.draw(self.mapIcon.image, self.mapIcon.quad, x, y)
        g.draw(quest.area, x + ICON_SIZE + 7, y)
    end
end

function drawCompleteQuests(self, quest, x, y, width)
    local height = 27
    -- background
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", x - 2, y, width - 10, height * 3 + 2, 2, 2, 10)
    x = x + 3
    y = y + 3
    -- title
    Colour.set(Colour.GREEN_BRIGHT)
    g.draw(self.questIcon.image, self.questIcon.quad, x - 2, y)
    Utils.setText(self.textObject, string.upper(Locale.text(quest.title)))
    g.draw(self.textObject, x + ICON_SIZE + 5, y)
    y = y + height
    -- Description
    Colour.set(Colour.WHITE)
    local text = Locale.text(quest.complete)
    -- Wrap the text if needed
    local _, lines = g_resMngr:getWrap(g_resMngr.DEFAULT_FONT_16, text, width - 10)
    text = lines[1]
    if #lines > 1 then
        text = text  .. "\n" .. lines[2]
    end
    Utils.setText(self.textObject, text)
    g.draw(self.textObject, x + 3, y)
end

function calculateProgressBar(self)
    local total = self.questInfo.total
    local completed = #self.questInfo.completeQuests
    local percentage = math.floor((completed / total) * 100)
    local text = percentage .. " % " .. Locale.text("questsCompleted")
    self.bar.w = (percentage * (self.size.w - 4)) / 100
    self.bar.text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], text)
end

return QuestsMenu
