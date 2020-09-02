--[[
questDialogue.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the class implementing the logic for a "quest" dialogue file.
It inherits from RepeatDialogue.
]]--


local RepeatDialogue = require 'game.gameWorld.dialogues.repeatDialogue'


local QuestDialogue = {}
QuestDialogue.__index = QuestDialogue

-- inherit from base class RepeatDialogue
setmetatable(QuestDialogue, {__index = RepeatDialogue})


function QuestDialogue.create(gameStates, triggers)
 --     print('CREATING QuestDialogue')  -- DEBUG_TAG

    local self = RepeatDialogue.create(gameStates, triggers)
    self = setmetatable(self, QuestDialogue)

    return self
end

-- Public -------------------------------------------------------------------------------

function QuestDialogue:next(optionIndex)
    -- for the first call to next, return the first node
    if self.isFirstCall then
        self.isFirstCall = false
        return self.dialogues[self.currentIndex]
    end

    local _, rule = self.gameStates:isQuestActive(self.questId)

    -- check if the selection option contains a trigger and execute it
    if self.dialogues[self.currentIndex].options[optionIndex] ~= nil then
        local _, optionValue = next(
            self.dialogues[self.currentIndex].options[optionIndex]
        )
        if type(optionValue) == 'string' then
            self.triggers:executeTrigger(optionValue, self.triggerData)
        end
    end

    -- move the dialogue to the index + 1
    if self.currentIndex < rule then
        self.currentIndex = self.currentIndex + 1
        return self.dialogues[self.currentIndex]
    end

    -- or back to the beginning if we reached the rule index
    return self:reset()
end

function QuestDialogue:setQuestData(startIndex, questId)
    self.currentIndex = startIndex
    self.questId = questId
end


return QuestDialogue
