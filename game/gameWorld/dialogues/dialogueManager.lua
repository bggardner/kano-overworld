--[[
dialogueManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This manager switches the implementing dialogue classes when the dialog is triggered.

Interactable objects using dialogues need to call setDialogue before presenting the
data to the dialog UI. It also loads all world dialogue files and stores a cache from
the implementing class within them.
]]--


local DialogueTrigger = require 'game.gameWorld.dialogues.dialogueTrigger'

local RepeatDialogue = require 'game.gameWorld.dialogues.repeatDialogue'
local StateDialogue = require 'game.gameWorld.dialogues.stateDialogue'
local DecisionDialogue = require 'game.gameWorld.dialogues.decisionDialogue'
local QuestDialogue = require 'game.gameWorld.dialogues.questDialogue'

local Utils = require 'system.utils'

local love = love
local f = love.filesystem


local DialogueManager = {}
DialogueManager.__index = DialogueManager

-- constants
local DIALOGUES_DIR = 'res/dialogues/'


function DialogueManager.create(worldId, gameStates, objectManager)
 --     print('CREATING DialogueManager')  -- DEBUG_TAG

    local self = setmetatable({}, DialogueManager)

    self.dialoguesDirPath = DIALOGUES_DIR .. worldId .. '/'
    self.gameStates = gameStates

    -- dialogue class modules
    self.variables = nil
    self.triggers = DialogueTrigger.create(gameStates, objectManager)

    -- supported dialogue types
    self.REPEAT_DIALOGUE = 'repeat'
    self.STATE_DIALOGUE = 'state'
    self.DECISION_DIALOGUE = 'decision'
    self.QUEST_DIALOGUE = 'quest'

    -- dialogue class drivers
    self.dialogues = {
        [self.REPEAT_DIALOGUE] = RepeatDialogue.create(gameStates, self.triggers),
        [self.STATE_DIALOGUE] = StateDialogue.create(gameStates, self.triggers),
        [self.DECISION_DIALOGUE] = DecisionDialogue.create(gameStates, self.triggers),
        [self.QUEST_DIALOGUE] = QuestDialogue.create(gameStates, self.triggers),
    }
    self.currentDialogue = nil

    -- each loaded dialogue file in this world associated with a cache for state
    self.dialogueData = {}
    self.currentDialogueId = ''

    return self
end

function DialogueManager:load()
    self.variables = self.gameStates:getGameVariables()
    self.triggers:load()

    -- loading all dialogue driver classes
    for _, dialogue in pairs(self.dialogues) do
        dialogue:load()
    end

    -- loading all the dialogue files in this world
    for _, dialogueFile in pairs(Utils.getFileTree(self.dialoguesDirPath)) do
        self.dialogueData[dialogueFile] = {
            data = f.load(self.dialoguesDirPath .. dialogueFile)(),
            cache = {}
        }
    end
end

-- Public -------------------------------------------------------------------------------

function DialogueManager:setDialogue(dialogue, setDialogueData, triggerData)
    if self.currentDialogueId == dialogue then
        return self.currentDialogue
    end

    -- load the data from a dialogue file into the respective driver class
    if Utils.stringEndsWith(dialogue, '.lua') then
        -- before switching the driver, save it's state
        if Utils.stringEndsWith(self.currentDialogueId, '.lua') and
           self.currentDialogue then
            self.dialogueData[self.currentDialogueId].cache = self.currentDialogue:getCache()
        end

        -- get the dialogue data for the new dialogue and set it on the driver
        local dialogueData = self.dialogueData[dialogue].data
        local dialogueCache = self.dialogueData[dialogue].cache
        dialogueData.triggerData = triggerData
        self.dialogues[dialogueData.type]:setData(dialogueData, dialogueCache)
        self.currentDialogue = self.dialogues[dialogueData.type]

        -- load the data from a dialogue key in lang into a default repeat driver class
    elseif setDialogueData then
        setDialogueData.triggerData = triggerData
        self.dialogues[self.REPEAT_DIALOGUE]:setData(setDialogueData)
        self.currentDialogue = self.dialogues[self.REPEAT_DIALOGUE]
    else
        self.dialogues[self.REPEAT_DIALOGUE]:setDataFromKey(dialogue)
        self.currentDialogue = self.dialogues[self.REPEAT_DIALOGUE]
    end

    -- keep the corresponding dialogue id
    self.currentDialogueId = dialogue

    return self.currentDialogue
end

function DialogueManager:getDialogue()
    return self.currentDialogue
end

function DialogueManager:getDialogueTypes()
    return self.dialogues
end

function DialogueManager:getVariables()
    return self.variables
end

function DialogueManager:getTriggers()
    return self.triggers
end

function DialogueManager:incrementTrigger(trigger)
    self.triggers:increment(trigger)
end


return DialogueManager
