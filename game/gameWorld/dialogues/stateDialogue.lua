--[[
stateDialogue.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the class implementing the logic for a "state" dialogue file.

It inherits from RepeatDialogue and it stores the resetIndex as its state
with the DialogueManager.
]]--


local RepeatDialogue = require 'game.gameWorld.dialogues.repeatDialogue'


local StateDialogue = {}
StateDialogue.__index = StateDialogue

-- inherit from base class RepeatDialogue
setmetatable(StateDialogue, {__index = RepeatDialogue})


function StateDialogue.create(gameStates, triggers)
 --     print('CREATING StateDialogue')  -- DEBUG_TAG

    local self = RepeatDialogue.create(gameStates, triggers)
    self = setmetatable(self, StateDialogue)

    -- state
    self.resetIndex = 1

    return self
end

-- Public -------------------------------------------------------------------------------

function StateDialogue:setData(dialogueData, cache)
    self.resetIndex = cache[1] or 1
    RepeatDialogue.setData(self, dialogueData)
end

function StateDialogue:next(optionIndex)
    -- for the first call to next, return the first node
    if self.isFirstCall then
        self.isFirstCall = false
        return self.dialogues[self.currentIndex]
    end

    -- move the dialogue to the index in the option's value
    if self.dialogues[self.currentIndex].options[optionIndex] ~= nil then
        local _, optionValue = next(
            self.dialogues[self.currentIndex].options[optionIndex]
        )
        if type(optionValue) == 'number' then
            if optionValue == 0 then
                return self:reset()
            end

            -- move to next node, apply it's properties, return copy node
            self.currentIndex = optionValue
            self:applyProperties()
            return self.dialogues[self.currentIndex]

        -- option had a trigger, execute it and reset
        else
            self.triggers:executeTrigger(optionValue)
            return self:reset()
        end
    end

    -- or back to the beginning if the node has no options
    return self:reset()
end

function StateDialogue:reset()
    RepeatDialogue.reset(self)
    self.currentIndex = self.resetIndex
    return nil
end

function StateDialogue:getCache()
    return {self.resetIndex}
end

-- Internal -----------------------------------------------------------------------------

function StateDialogue:applyProperties()
    -- save the state of the dialogue
    if self.dialogues[self.currentIndex].properties.save then
        self.resetIndex = self.currentIndex
    end

    -- -- hard reset of the state
    -- if self.dialogues[self.currentIndex].properties.reset then
    --     self.resetIndex = 1
    --     self:reset()
    -- end
end


return StateDialogue
