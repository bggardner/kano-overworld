--[[
repeatDialogue.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the class implementing the logic for a "repeat" dialogue file.

It has a simple graph traversal mechanism to move from one dialogue node
to the other via its next method.
]]--


local Locale = require 'system.locale'


local RepeatDialogue = {}
RepeatDialogue.__index = RepeatDialogue


function RepeatDialogue.create(gameStates, triggers)
 --     print('CREATING RepeatDialogue')  -- DEBUG_TAG

    local self = setmetatable({}, RepeatDialogue)

    self.gameStates = gameStates
    self.triggers = triggers

    self.variables = nil

    -- data structure
    self.dialogues = {}

    -- state
    self.currentIndex = 1
    self.isFirstCall = true

    return self
end

function RepeatDialogue:load()
 --     print('LOADING RepeatDialogue')  -- DEBUG_TAG

    self.variables = self.gameStates:getGameVariables()
end

-- Public -------------------------------------------------------------------------------

function RepeatDialogue:setData(dialogueData, _)
    self.triggerData = dialogueData.triggerData
    self.dialogues = dialogueData.dialogues
    self:reset()
end

function RepeatDialogue:setDataFromKey(dialogueKey)
    self.dialogues = {{
        copy = {
            dialogueKey
        },
        options = {},
        arguments = {},
    }}
end


function RepeatDialogue:next(optionIndex)
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

            self.currentIndex = optionValue
            return self.dialogues[self.currentIndex]

        -- option had a trigger, execute it and reset
        else
            self.triggers:executeTrigger(optionValue, self.triggerData)
            return self:reset()
        end
    end

    -- or back to the beginning if the node has no options
    return self:reset()
end

function RepeatDialogue:reset()
    self.currentIndex = 1
    self.isFirstCall = true
    -- check if any quest has been unlocked in this dialogue
    self.gameStates:checkQuestUnlocked()
    -- check if we have discovered a codex element in this dialogue
    self.gameStates:checkCodexElementDiscovered()
    return nil
end

function RepeatDialogue:getCache()
    return nil  -- nothing to store
end

function RepeatDialogue:getCopy()
    local dialogueData = self.dialogues[self.currentIndex]

    if dialogueData.rawCopy then
        return dialogueData.rawCopy, dialogueData.rawCopyKey
    end

    local copyKey = dialogueData.copy[math.random(1, #dialogueData.copy)]
    local copyText

    -- localise copy with any supplied arguments
    if next(dialogueData.arguments) then
        copyText = Locale.textWithArg(
            copyKey, unpack(self.variables:getFromTable(dialogueData.arguments))
        )
    else
        copyText = Locale.text(copyKey)
    end

    return copyText, copyKey
end

function RepeatDialogue:getOptions()
    local dialogueData = self.dialogues[self.currentIndex]

    local optionTexts = {}
    local optionKeys = {}
    local optionKey, optionText

    -- for each option, get the key, localise it, and add it to the list
    for _, option in ipairs(dialogueData.options) do
        optionKey, _ = next(option)
        optionText = Locale.text(optionKey)
        table.insert(optionTexts, optionText)
        table.insert(optionKeys, optionKey)
    end

    return optionTexts, optionKeys
end

function RepeatDialogue:getNumOptions()
    return #self.dialogues[self.currentIndex].options
end


return RepeatDialogue
