--[[
menu.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Menu class, contains: minimap, quests and codex
]]--


local Button = require 'game.ui.menu.buttonImage'
local Colour = require 'system.colour'
local ExitDialog = require 'game.ui.HUD.exitDialog'
local MiniMap = require 'game.ui.menu.minimap'
local QuestsMenu = require  'game.ui.menu.questsMenu'
local CodexMenu = require  'game.ui.menu.codexMenu'
local TabBar = require 'game.ui.menu.tabBar'
local Utils = require 'system.utils'
local Locale = require 'system.locale'

local love = love
local g = love.graphics
local m = love.mouse
local t = love.timer

local Menu = {}
Menu.__index = Menu

-- local function forward declaration
local changeStatus, checkPosition, checkTouchPosition


function Menu.create(worldId, gameStates, uiManager)
 --     print("CREATING Menu")  -- DEBUG_TAG

    local self = setmetatable({}, Menu)
    self.uiManager = uiManager

    -- status
    self.STATE_INACTIVE = 0
    self.STATE_MINIMAP = 1
    self.STATE_QUESTS = 2
    self.STATE_CODEX = 3
    -- Menus
    self.minimap = MiniMap.create(self, worldId)
    self.quests = QuestsMenu.create(self)
    self.codex = CodexMenu.create(self, gameStates)
    self.currentMenu = self.minimap
    -- Exit dialog
    self.exitDialog = ExitDialog.create(gameStates, uiManager, self)
    -- Dashboard Button
    self.button = Button.create(nil)
    -- Tab Bar
    self.tabBar = TabBar.create(self)
    -- Navigation
    self.NAV_TABBAR = 1
    self.NAV_INSIDE = 2
    self.NAV_DASHBOARD = 3
    --
    self.frameColour = Colour.WHITE

    return self
end

function Menu:load()
 --     print("LOADING Menu")  -- DEBUG_TAG

    self.uiElements = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    self.barSize = 25
    -- Load minimap
    self.minimap:load(self.uiElements, self.barSize)
    local map = self.minimap:getPosSize()
    -- Load quests menu
    self.quests:load(self.uiElements, map.x, map.y, map.w, map.h, self.barSize)
    -- Load codex
    self.codex:load(self.uiElements, map.x, map.y, map.w, map.h, self.barSize)
    -- Load mouse image
    local tileX, tileY = 161, 0
    local width, height = 25, 38
    self.mouseQuad = g.newQuad(tileX, tileY, width, height, Utils.getSize(self.uiElements))
    -- Load dashboard button
    tileX, tileY = 0, 72
    width, height = 83, 86
    self.button:load(self.uiElements, tileX, tileY, width, height)
    self.button:init(map.x - width - 10, map.y)
    -- Top-left back icon
    tileX, tileY = 375, 159
    width, height = 113, 28
    self.quadClose = g.newQuad(tileX, tileY, width, height, Utils.getSize(self.uiElements))
    self.posClose = {x = 30, y = 30}
    local text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
                           string.upper(Locale.text("close")))
    local x = Utils.round((self.posClose.x + (width - text:getWidth()) / 2) + 10)
    local y = Utils.round((self.posClose.y + (height - text:getHeight()) / 2) - 2)
    self.closeText = {text = text, x = x, y = y}
    -- Load tab bar
    self.tabBar:load(self.uiElements, changeStatus, map.x, map.y)
    -- Frame
    self.lineW = 4
    self.mainFrameSize = {h = map.h + self.lineW, w = map.w + self.lineW}
    self.mainFramePos = {
        x = Utils.round(map.x - self.lineW / 2),
        y = Utils.round(map.y - self.lineW / 2)
    }
    self.barFrameSize = {h = self.barSize + self.lineW * 4, w = map.w + self.lineW}
    self.barFramePos = {x = self.mainFramePos.x, y = self.mainFramePos.y + map.h - self.lineW}
end

function Menu:update(dt)
    -- Menu
    if not self.exitDialog:isActive() then
        -- update animated button
        if self.button:update() then
            self.button:toggleSelected(true)
            self:changeNavigation(self.NAV_DASHBOARD)
        end
        self.tabBar:update()
        -- Menu
        self.currentMenu:update(dt)
    -- Exit dialogue
    else
        self.exitDialog:update()
        return
    end
end

function Menu:draw()
    local sw, sh = Utils.getScale()
    local width = g.getWidth() / sw
    local height = g.getHeight() / sh
    local lineW = g.getLineWidth()

    -- blur
    Colour.set(Colour.BLACK, 140)
    g.rectangle("fill", 0, 0, width, height)
    -- Bar background
    Colour.set(Colour.GREY_DARK2)
    g.rectangle("fill", self.barFramePos.x, self.barFramePos.y,
                self.barFrameSize.w, self.barFrameSize.h)
    -- tab bar
    self.tabBar:draw()
    -- Draw frame
    Colour.set(self.frameColour)
    g.setLineWidth(self.lineW)
    g.rectangle("line", self.mainFramePos.x, self.mainFramePos.y,
                self.mainFrameSize.w, self.mainFrameSize.h, 5, 5, 10)
    g.rectangle("line", self.barFramePos.x, self.barFramePos.y,
                self.barFrameSize.w, self.barFrameSize.h, 5, 5, 10)
    -- Menu
    self.currentMenu:draw()
    -- Exit dialogue
    if self.exitDialog:isActive() then
        self.exitDialog:draw()
    end
    -- dashboard button
    self.button:draw()
    -- top-left back icon
    g.draw(self.uiElements, self.quadClose, self.posClose.x, self.posClose.y)
    g.draw(self.closeText.text, self.closeText.x, self.closeText.y)
    -- draw mouse pointer
    local x, y = m.getPosition()
    g.draw(self.uiElements, self.mouseQuad, x / sw, y / sh, 0, 0.5, 0.5)

    -- resetting graphics
    g.setLineWidth(lineW)
    Colour.reset()
end

function Menu:activate(gameStates, uiManager, s)
    local state = s or self.STATE_MINIMAP
    self.activeTime = t.getTime()
    -- sound
    g_resMngr.playSound(g_resMngr.SFX_MINIMAP)
    g_resMngr.changeVolume(0.2)
    -- Change state
    gameStates:changeState(gameStates.STATE_MENU)
    uiManager:changeState(uiManager.STATE_MENU)
    changeStatus(self, self.STATE_MINIMAP)
    self:changeNavigation(self.NAV_INSIDE)
    -- minimap
    self.minimap:activate(gameStates)
    -- quests
    self.quests:activate(gameStates, self)
    -- codex
    self.codex:activate()
    -- Change state
    gameStates:changeState(gameStates.STATE_MENU)
    uiManager:changeState(uiManager.STATE_MENU)
    changeStatus(self, state)
    self:changeNavigation(self.NAV_INSIDE)
    --
    self.button:toggleSelected(false)
    self.tabBar:activate(state)
end

function Menu:deactivate(gameStates, uiManager, silent)
    changeStatus(self, self.STATE_INACTIVE)

    if not silent then
        g_resMngr.playSound(g_resMngr.SFX_MINIMAP)
    end
    --
    self.minimap:deactivate()
    self.exitDialog:deactivate()
    self.codex:deactivate()
    --
    gameStates:changeState(gameStates.STATE_INGAME)
    uiManager:changeState(uiManager.STATE_GAMEUI)
    -- restore volume
    g_resMngr.changeVolume(0.5)
end

-- Minimap ------------------------------------------------------------------------------

function Menu:hasMinimap(gameStates)
    return self.minimap:hasMinimap(gameStates)
end

function Menu:getAreaFromFilename(name)
    return self.minimap:getAreaFromFilename(name)
end

function Menu:hasAreaBeenVisited(name, visitedMaps)
    return self.minimap:hasAreaBeenVisited(name, visitedMaps)
end

function Menu:getPercentageVisited(gameStates)
    return self.minimap:getPercentageVisited(gameStates)
end

-- Input --------------------------------------------------------------------------------

function Menu:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, uiManager)
    -- Check deactivate menu
    if isReleased and self:keysNavigation(key, gameStates, uiManager) then
        return
    end
    -- Exit Dialogue input
    if self.exitDialog:isActive() then
        self.exitDialog:controls(isReleased, key, mousebutton, touchX, touchY)
        return
    end
    -- Click in tab bar
    if self.tabBar:controls(isReleased, key, touchX, touchY) then
        return
    end
    -- Check for mouse click in buttons and outside menu
    if m.isDown(1, 2, 3) then
        self:click(gameStates, uiManager)
    end
    -- Check for touch in buttons and outside menu
    if touchX ~= nil and touchY ~= nil then
        self:touch(touchX, touchY, gameStates, uiManager)
    end

    -- Click in the menu
    self.currentMenu:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, self)
end

function Menu:keysNavigation(key, gameStates, uiManager)
    -- check for closign the menu (esc, m, c or q)
    if (key == 'm' or key == 'q' or key == 'c' or key == 'escape') and
       (not self.codex:searchIsSelected()) then
        self:deactivate(gameStates, uiManager)
        return true
    -- right navigation
    elseif (key == 'right' or key == 'd') and self.button:isSelected() then
        self:changeNavigation(self.NAV_TABBAR)
        return true
    -- enter key
    elseif key == 'return' and self.button:isSelected() then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        local map = self.minimap:getPosSize()
        self.exitDialog:activate(map.x, map.y, map.w, map.h)
        self.button:toggleSelected(false)
        return true
    end
    return false
end

function Menu:checkForActivation(isReleased, key, touchX, touchY, gameStates, uiManager)
    -- Check activate / deactivate menu
    local state = nil
    if isReleased then
        -- Check for the key
        if (key == 'm' or key == 'escape') then
            state = self.STATE_MINIMAP
        elseif key == 'q' then
            state = self.STATE_QUESTS
        elseif key == 'c' then
            state = self.STATE_CODEX
        end
    end
    -- TODO: This should be handled by ingameUI!
    if touchX ~= nil and touchY ~= nil then
        if checkTouchPosition(30, 30, 89, 28, touchX, touchY) then
            state = self.STATE_MINIMAP
        elseif checkTouchPosition(130, 30, 121, 28, touchX, touchY) then
            state = self.STATE_QUESTS
        elseif checkTouchPosition(271, 30, 109, 28, touchX, touchY) then
            state = self.STATE_CODEX
        end
    end
    -- If correct key then activate the appropiate menu
    if state then
        -- take screenshot before showing the map
        Utils.takeScreenshot(gameStates:getPlayerPos())
        -- activate the map
        self:activate(gameStates, uiManager, state)
        -- deactivate any dialogues
        uiManager:deactivateInGame()
    end
end

function Menu:click(gameStates, uiManager)
    -- Check for activate Exit Dialog
    if self.button:mouseClick() then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        local map = self.minimap:getPosSize()
        self.exitDialog:activate(map.x, map.y, map.w, map.h)
        self.button:toggleSelected(false)
        return
    end
    -- Check if the click is outside the map
    local map = self.minimap:getPosSize()
    if not checkPosition(map.x, map.y, map.w, map.h) then
 --         print(' -- Menu: click: deactivating menu')  -- DEBUG_TAG
        self:deactivate(gameStates, uiManager)
        return
    end
end

function Menu:touch(touchX, touchY, gameStates, uiManager)
    -- Check for activate Exit Dialog
    if self.button:touchClick(touchX, touchY) then
        g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
        local map = self.minimap:getPosSize()
        self.exitDialog:activate(map.x, map.y, map.w, map.h)
        self.button:toggleSelected(false)
        return
    end
    -- Check if the touch is outside the map
    local map = self.minimap:getPosSize()
    if not checkTouchPosition(map.x, map.y, map.w, map.h, touchX, touchY) then
 --         print(' -- Menu: touch: deactivating menu')  -- DEBUG_TAG
        self:deactivate(gameStates, uiManager)
        return
    end
end

function Menu:changeNavigation(nav)
    self.button:toggleSelected(false or (nav == self.NAV_DASHBOARD))
    self.tabBar:setNavigation(false or (nav == self.NAV_TABBAR))
    self.currentMenu:setNavigation(false or (nav == self.NAV_INSIDE))
end

-- Private ------------------------------------------------------------------------------

function changeStatus(self, status)
    self.status = status
    if self.status == self.STATE_MINIMAP then
        self.currentMenu = self.minimap
        self.frameColour = Colour.GREEN_FOREST
        Utils.trackAction("kano-overworld-minimap-activated")
    elseif self.status == self.STATE_QUESTS then
        self.currentMenu = self.quests
        self.uiManager:setNewQuest(false)
        self.frameColour = Colour.LAVENDER
        Utils.trackAction("kano-overworld-questsmenu-activated")
    elseif self.status == self.STATE_CODEX then
        self.codex:reset()
        self.currentMenu = self.codex
        self.uiManager:setNewCodex(false)
        self.frameColour = Colour.BLUE_SEA
        Utils.trackAction("kano-overworld-codexmenu-activated")
    end
    self:changeNavigation(self.NAV_INSIDE)
end

function checkPosition(x, y, w, h)
    local sw, sh = Utils.getScale()
    return ((x * sw) <= m.getX()) and (m.getX() <= (x * sw + w * sw)) and
           ((y * sh) <= m.getY()) and (m.getY() <= (y * sh + h * sh))
end

function checkTouchPosition(x, y, w, h, touchX, touchY)
    local sw, sh = Utils.getScale()
    return ((x * sw) <= touchX) and (touchX <= (x * sw + w * sw)) and
           ((y * sh) <= touchY) and (touchY <= (y * sh + h * sh))
end


return Menu
