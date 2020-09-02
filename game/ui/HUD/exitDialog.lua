--[[
exitDialog.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Button = require 'game.ui.menu.button'
local Colour = require 'system.colour'
local Locale = require 'system.locale'
local Utils = require 'system.utils'

local love = love
local g = love.graphics


local ExitDialog = {}
ExitDialog.__index = ExitDialog

-- local function forward declaration
local postAnimationCallback


function ExitDialog.create(gameStates, uiManager, menu)
 --     print("CREATING Exit Dialogue")  -- DEBUG_TAG

    local self = setmetatable({}, ExitDialog)

    self.active = false
    self.menu = menu
    --
    self.textKey = "exit"
    self.buttons = {}

    -- Button Yes
    local textKey = "Yes"
    local action = gameStates.activateAnimation
    local args = {
        gameStates, 'rectangleVerticalWipeIn',
        postAnimationCallback, gameStates, uiManager
    }
    local font = g_resMngr.DEFAULT_FONT_16
    local boxColor = Colour.GREEN
    local shadowColor = Colour.GREEN_DARK
    local buttonYes = Button.create(textKey, action, args, font, boxColor, shadowColor)
    table.insert(self.buttons, buttonYes)

    -- Button No
    textKey = "No"
    action = self.deactivate
    args = {self}
    boxColor = Colour.RED
    shadowColor = Colour.RED_DARK
    local buttonNo = Button.create(textKey, action, args, font, boxColor, shadowColor)
    table.insert(self.buttons, buttonNo)

    return self
end

function ExitDialog:update()
    local buttonYes = self.buttons[1]
    local buttonNo = self.buttons[2]

    local old = self.currentOption

    -- update button yes
    local selected = buttonYes:update()
    if selected then
        buttonNo:select(false)
        self.currentOption = 1
    end
    -- update button no
    selected = buttonNo:update()
    if selected then
        buttonYes:select(false)
        self.currentOption = 2
    end

    if self.currentOption ~= old then
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
    end
end

function ExitDialog:draw()
    local lineW = g.getLineWidth()

    -- blur
    Colour.set(Colour.BLACK, 140)
    g.rectangle("fill", self.blurPos.x, self.blurPos.y, self.blurSize.w, self.blurSize.h)
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
    -- text
    Colour.set(Colour.WHITE)
    g.draw(self.text, self.posTxt.x, self.posTxt.y)
    -- buttons
    self.buttons[1]:draw()
    self.buttons[2]:draw()

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end

function ExitDialog:activate(x, y, w, h)
    self.active = true
    self.closing = false
    self.currentOption = 1

    -- Set text
    self.text = g.newText(
        g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text(self.textKey)
    )
    local textLength = self.text:getWidth()
    --
    local sx, sy = Utils.getScale()
    local mapWidth = g.getWidth() / sx
    local mapHeight = g.getHeight() / sy

    -- Blur
    self.blurPos = { x = x, y = y}
    self.blurSize = { w = w, h = h}

    -- Window
    local width = textLength + 100
    local height = 100
    self.sizeWin = {w = width, h = height}
    local posX = Utils.round((mapWidth - self.sizeWin.w) / 2)
    local posY = Utils.round((mapHeight - self.sizeWin.h) / 2)
    self.posWin = {x = posX, y = posY}

    -- Text
    posX = Utils.round(self.posWin.x + (width - textLength) / 2)
    posY = self.posWin.y + 10
    self.posTxt = {x = posX, y = posY}

    -- Buttons
    local buttonYes = self.buttons[1]
    buttonYes:init()
    local buttonNo = self.buttons[2]
    buttonNo:init()

    -- Calculate button position
    posY = Utils.round(self.posWin.y + height * 0.5)
    local widthYes = buttonYes:getSize().w
    local widthNo = buttonNo:getSize().w
    local space = 30
    -- yes
    posX = Utils.round(self.posWin.x + (width - (widthYes + widthNo + space)) / 2)
    buttonYes:setPos(posX, posY)
    buttonYes:toggleSelected()
    -- no
    posX = posX + widthYes + space
    buttonNo:setPos(posX, posY)
end

function ExitDialog:deactivate()
    self.active = false
    self.text = nil
    self.menu:changeNavigation(self.menu.NAV_DASHBOARD)
end

function ExitDialog:isActive()
    return self.active
end

function ExitDialog:changeSelected()
    self.buttons[1]:toggleSelected()
    self.buttons[2]:toggleSelected()
end

-- Input --------------------------------------------------------------------------------

function ExitDialog:controls(isReleased, key, mousebutton, touchX, touchY)
    if not self.closing then
        local newOption = self.currentOption

        if key == 'right' then
            newOption = math.min(self.currentOption + 1, #self.buttons)
        elseif key == 'left' then
            newOption = math.max(1, self.currentOption - 1)
        end
        if newOption ~= self.currentOption then
            self:changeSelected()
            self.currentOption = newOption
            g_resMngr.playSound(g_resMngr.SFX_MOUSE)
            return
        end

        local yesClick = self.buttons[1]:controls(isReleased, key, mousebutton, touchX, touchY)
        local noClick = self.buttons[2]:controls(isReleased, key, mousebutton, touchX, touchY)
        if yesClick or noClick then
            if noClick then
                Utils.trackAction("kano-overworld-noexit")
            end
        self.closing = true
        end
    end
end

-- Private ------------------------------------------------------------------------------

function postAnimationCallback(gameStates, uiManager)
    gameStates:changeState(gameStates.STATE_CLOSING)
    uiManager:changeState(uiManager.STATE_CLOSING)
    love.event.quit()
end


return ExitDialog
