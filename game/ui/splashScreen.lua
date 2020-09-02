--[[
splashScreen.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Locale = require 'system.locale'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local t = love.timer


local SplashScreen = {}
SplashScreen.__index = SplashScreen

-- local function forward declaration
local postAnimationCallback, calculatePosition


function SplashScreen.create()
 --     print("CREATING SplashScreen")  -- DEBUG_TAG

    local self = setmetatable({}, SplashScreen)

    self.start = false
    self.doFirstIteration = false
    self.doSecondIteration = false
    self.loaded = false
    self.initTime = 0
    self.sx = 1
    self.sy = 1

    self.firstText = nil
    self.secondText = nil
    self.currentText = nil

    return self
end

function SplashScreen:load()
 --     print("LOADING SplashScreen")  -- DEBUG_TAG

    -- loading minimum resources
    g_resMngr:preload()

    -- Create quad
    local tileX, tileY = 0, 160
    self.w, self.h = 80, 80
    self.uiElements = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    self.quad = g.newQuad(tileX, tileY, self.w, self.h, Utils.getSize(self.uiElements))

    self.firstText = g.newText(
        g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text('firstLoadingText')
    )
    self.secondText = g.newText(
        g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], Locale.text('secondLoadingText')
    )
    self.currentText = self.firstText
end

function SplashScreen:init(_)
    love.mouse.setVisible(false)
    self.initTime = t.getTime()
    calculatePosition(self, self.secondText)
end

function SplashScreen:update(_, gameStates, uiManager)
    -- Load all the assets

    -- first call of this method does nothing
    if not self.loaded and self.doFirstIteration then
        g_resMngr:load()
        gameStates.gameManager:preload(gameStates)

        -- Rescale the image
        local sw, sh = Utils.getScale()
        self.sx = 1 / sw
        self.sy = 1 / sh
        -- move to the second loading stage (elseif below)
        self.doFirstIteration = false
        self.doSecondIteration = true
        self.currentText = self.secondText
        calculatePosition(self, self.secondText)

    elseif not self.loaded and self.doSecondIteration then
        gameStates:load()
        self.loaded = true

    elseif self.loaded and (t.getTime() - self.initTime > 1.5) then
        gameStates:initGame()
        gameStates:activateAnimation(
            'rectangleVerticalWipeOut', postAnimationCallback, uiManager
        )
    end
end

function SplashScreen:draw()
    -- image
    g.draw(self.uiElements, self.quad, self.x, self.y, 0, self.sx, self.sy)
    -- text
    g.draw(
        self.currentText, self.x + self.w * self.sx,
        self.y + (self.h - self.currentText:getHeight() - 18) * self.sy,
        0, self.sx, self.sy
    )
    -- make sure we have drawn something on screen before loading
    if not self.start then
        self.doFirstIteration = true
        self.start = true
    end
end

-- Input --------------------------------------------------------------------------------

function SplashScreen:controls()
    return
end

-- Private ------------------------------------------------------------------------------

function postAnimationCallback(uiManager)
    uiManager:changeState(uiManager.STATE_GAMEUI)
end

function calculatePosition(self, text)
    self.x = Utils.round(((g.getWidth() - (1.3 * self.w + text:getWidth()))/ 2) * self.sx)
    self.y = Utils.round(((g.getHeight() - self.h) / 2)  * self.sy)
end


return SplashScreen
