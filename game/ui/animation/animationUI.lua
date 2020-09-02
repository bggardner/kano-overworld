--[[
animationUI.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local CircleWipeIn = require 'game.ui.animation.circleWipeIn'
local CircleWipeOut = require 'game.ui.animation.circleWipeOut'
local RectangleWipeIn = require 'game.ui.animation.rectangleWipeIn'
local RectangleWipeOut = require 'game.ui.animation.rectangleWipeOut'
local RectangleSwipeIn = require 'game.ui.animation.rectangleSwipeIn'
local RectangleSwipeOut = require 'game.ui.animation.rectangleSwipeOut'
local RectangleVerticalWipeIn = require 'game.ui.animation.rectangleVerticalWipeIn'
local RectangleVerticalWipeOut = require 'game.ui.animation.rectangleVerticalWipeOut'


local AnimationUI = {}
AnimationUI.__index = AnimationUI


function AnimationUI.create(gameStates, uiManager)
 --     print("CREATING AnimationUI")  -- DEBUG_TAG

    local self = setmetatable({}, AnimationUI)

    -- parameters
    self.gameStates = gameStates
    self.uiManager = uiManager

    -- animation types available
    self.CIRCLE_WIPE_IN = 'circleWipeIn'
    self.CIRCLE_WIPE_OUT = 'circleWipeOut'
    self.RECTANGLE_WIPE_IN = 'rectangleWipeIn'
    self.RECTANGLE_WIPE_OUT = 'rectangleWipeOut'
    self.RECTANGLE_SWIPE_IN = 'rectangleSwipeIn'
    self.RECTANGLE_SWIPE_OUT = 'rectangleSwipeOut'
    self.RECTANGLE_VERTICAL_WIPE_IN = 'rectangleVerticalWipeIn'
    self.RECTANGLE_VERTICAL_WIPE_OUT = 'rectangleVerticalWipeOut'

    -- variables
    self.animations = {
        [self.CIRCLE_WIPE_IN] = CircleWipeIn.create(),
        [self.CIRCLE_WIPE_OUT] = CircleWipeOut.create(),
        [self.RECTANGLE_WIPE_IN] = RectangleWipeIn.create(),
        [self.RECTANGLE_WIPE_OUT] = RectangleWipeOut.create(),
        [self.RECTANGLE_SWIPE_IN] = RectangleSwipeIn.create(),
        [self.RECTANGLE_SWIPE_OUT] = RectangleSwipeOut.create(),
        [self.RECTANGLE_VERTICAL_WIPE_IN] = RectangleVerticalWipeIn.create(),
        [self.RECTANGLE_VERTICAL_WIPE_OUT] = RectangleVerticalWipeOut.create(),
    }
    self.currentAnimation = nil
    self.postAnimationCallback = nil
    self.callbackArgs = nil

    return self
end

function AnimationUI:load()
 --     print("LOADING AnimationUI")  -- DEBUG_TAG

    for _, animation in pairs(self.animations) do
        animation:load()
    end
end

function AnimationUI:update(dt)
    if not self.currentAnimation:isFinished() then
        self.currentAnimation:update(dt)
    else
        self:deactivate()
    end
end

function AnimationUI:draw()
    self.currentAnimation:draw()
end

function AnimationUI:activate(type, postAnimationCallback, ...)
    self.currentAnimation = self.animations[type]
    self.postAnimationCallback = postAnimationCallback
    self.callbackArgs = {...}

    self.currentAnimation:start()

    self.gameStates:changeState(self.gameStates.STATE_ANIMATION)
    self.uiManager:changeState(self.uiManager.STATE_ANIMATION)
end

function AnimationUI:deactivate()
    self.gameStates:changeState(self.gameStates.STATE_INGAME)
    self.uiManager:changeState(self.uiManager.STATE_GAMEUI)

    local postAnimationCallback = self.postAnimationCallback
    local callbackArgs = self.callbackArgs

    self.currentAnimation = nil
    self.postAnimationCallback = nil
    self.callbackArgs = nil

    if postAnimationCallback then
        postAnimationCallback(unpack(callbackArgs))
    end
end

-- Input --------------------------------------------------------------------------------

function AnimationUI:controls()
    return
end


return AnimationUI
