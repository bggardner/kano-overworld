--[[
objectManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Manages dynamic objects created at runtime (not part of the map)
]]--


local SpeechBubble = require 'game.gameWorld.objects.speechBubble'
local ActionObject = require 'game.gameWorld.objects.actionObject'


local ObjectManager = {}
ObjectManager.__index = ObjectManager

local TYPE_BUBBLE = "bubble"
local TYPE_ACTION = "action"

function ObjectManager.create(gameStates)
 --     print("CREATING Object Manager")  -- DEBUG_TAG

    local self = setmetatable({}, ObjectManager)

    self.gameStates = gameStates
    self.actionObject = ActionObject.create(gameStates, self)
    self.speechBubble = SpeechBubble.create(self)

    self.activeElements = {}

    return self
end

function ObjectManager:load()
 --     print("LOADING Object Manager")  -- DEBUG_TAG

    self.actionObject:load()
end

function ObjectManager:update(dt)
    for _,v in ipairs(self.activeElements) do
        v.obj:update(dt, self)
    end
end

function ObjectManager:draw()
    for _,v in ipairs(self.activeElements) do
        v.obj:draw()
    end
end

-- General ------------------------------------------------------------------------------

function ObjectManager:getObjectByType(_type)
    if _type == TYPE_BUBBLE then
        return self.speechBubble
    elseif _type == TYPE_ACTION then
        return self.actionObject
    end
 --     assert(false, "Invalid type: ".._type)  -- DEBUG_TAG
end

function ObjectManager:deactivate(_type)
    for i, v in ipairs(self.activeElements) do
        if v.type == _type then
            local object = self:getObjectByType(_type)
            object:deactivate()
            table.remove(self.activeElements, i)
            if _type == TYPE_ACTION then
                -- show quest markers
                self.gameStates:hideQuestMarkers(false)
            end
        end
    end
end

function ObjectManager:isActive(_type)
    if not next(self.activeElements) then
        return false
    end
    for _, v in ipairs(self.activeElements) do
        if v.type == _type then
            return v.obj:isActive()
        end
    end
    return false
end

-- Speech Bubbles -----------------------------------------------------------------------

function ObjectManager:activateBubble(x, y, text, autoclose)
    if self:isBubbleActive() then
        self:deactivateBubble()
    end
    self.speechBubble:activate(x, y, text, autoclose)
    table.insert(self.activeElements, {obj = self.speechBubble, type="bubble"})
end

-- Action Object ------------------------------------------------------------------------

function ObjectManager:activateAction(_type, x, y, ...)
    -- Only add the action object if not active and has a correct position
    if self:isActive(TYPE_ACTION) then
        self:deactivate(TYPE_ACTION)
    end

    self.gameStates:hideQuestMarkers(true)
    -- Loading bar
    if _type == 'loading' then
        local command = select(1, ...)
        self.gameStates:activateLoading(command)
        return
    end
    -- Action Object
    self.actionObject:activate(_type, x, y, ...)
    table.insert(self.activeElements, {obj = self.actionObject, type=TYPE_ACTION})
end


-- Minimap ------------------------------------------------------------------------------

function ObjectManager:activateMenu()
    self.gameStates:activateMenu()
end

-- Input --------------------------------------------------------------------------------

function ObjectManager:controls(isReleased, key, mousebutton)
    for _,v in ipairs(self.activeElements) do
        v.obj:controls(isReleased, key, mousebutton)
    end
end


return ObjectManager
