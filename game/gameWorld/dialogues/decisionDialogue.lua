--[[
decisionDialogue.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the class implementing the logic for a "decision" dialogue file.

It inherits from StateDialogue. Apart from the "copy" dialogue nodes, it can have a
"compare" decision node which essentially implements an if statement to determine
the next node to go to. Decision nodes are not presented to the dialog UI.
]]--


local StateDialogue = require 'game.gameWorld.dialogues.stateDialogue'


local DecisionDialogue = {}
DecisionDialogue.__index = DecisionDialogue

-- inherit from base class StateDialogue
setmetatable(DecisionDialogue, {__index = StateDialogue})

-- local function forward declaration
local solveDecisions, compare
local lessThan, lessOrEquals, greaterThan, greaterOrEquals, equals, notEquals


function DecisionDialogue.create(gameStates, triggers)
 --     print('CREATING DecisionDialogue')  -- DEBUG_TAG

    local self = StateDialogue.create(gameStates, triggers)
    self = setmetatable(self, DecisionDialogue)

    -- data structure
    self.decisions = {
        ['compare'] = compare,
    }
    self.operators = {
        ['lessThan'] = lessThan,
        ['lessOrEquals'] = lessOrEquals,
        ['greaterThan'] = greaterThan,
        ['greaterOrEquals'] = greaterOrEquals,
        ['equals'] = equals,
        ['notEquals'] = notEquals,
    }

    return self
end

-- Public -------------------------------------------------------------------------------

function DecisionDialogue:next(optionIndex)
    -- check if the dialogue we got to is a decision node
    solveDecisions(self)

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

            -- move to next node, solve all decision points, return resulting copy node
            self.currentIndex = optionValue
            self:applyProperties()
            solveDecisions(self)
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

function DecisionDialogue:getDecisions()
    return self.decisions
end

function DecisionDialogue:getOperators()
    return self.operators
end

-- Private ------------------------------------------------------------------------------

function solveDecisions(self)
    -- solve multiple decision nodes one after the other with their appropriate type
    while self.dialogues[self.currentIndex].type ~= nil and
          self.decisions[self.dialogues[self.currentIndex].type] ~= nil do

        self.decisions[self.dialogues[self.currentIndex].type](self)
        self:applyProperties()
    end
end

function compare(self)
    local dialogue = self.dialogues[self.currentIndex]

    -- replace operands with engine variables from triggers or gameVariables
    if type(dialogue.a) == 'string' then
        dialogue.a = self.triggers:get(dialogue.a) or self.variables:get(dialogue.a)
    end
    if type(dialogue.b) == 'string' then
        dialogue.b = self.triggers:get(dialogue.b) or self.variables:get(dialogue.b)
    end

    -- go to the next node according to the operation
    self.currentIndex = self.operators[dialogue.operator](
        dialogue.a, dialogue.b, dialogue.positive, dialogue.negative
    )
end

function lessThan(a, b, positive, negative)
    if a < b then return positive else return negative end
end

function lessOrEquals(a, b, positive, negative)
    if a <= b then return positive else return negative end
end

function greaterThan(a, b, positive, negative)
    if a > b then return positive else return negative end
end

function greaterOrEquals(a, b, positive, negative)
    if a >= b then return positive else return negative end
end

function equals(a, b, positive, negative)
    if a == b then return positive else return negative end
end

function notEquals(a, b, positive, negative)
    if a ~= b then return positive else return negative end
end


return DecisionDialogue
