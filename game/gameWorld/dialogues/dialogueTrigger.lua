--[[
dialogueTrigger.lua

Copyright (C) 2016-2019 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

It interprets triggers specified in a Dialogue option to emit certain game events.
At the moment these triggers only launch apps through the LoadingDialog, but could
also be used for tracking, quests, etc.
]]--


local Locale = require 'system.locale'

local love = love


local DialogueTrigger = {}
DialogueTrigger.__index = DialogueTrigger

-- constants
local TRIGGERS = {
    -- triggers to launch apps and count the number of launches
    ['CMD_PONG'] = 0,
    ['CMD_FLAPPY_JUDOKA'] = 0,
    ['CMD_MAKE_PONG'] = 0,
    ['CMD_MAKE_SNAKE'] = 0,
    ['CMD_MAKE_MINECRAFT'] = 0,
    ['CMD_TERMINAL_QUEST'] = 0,
    ['CMD_MAKE_ART'] = 0,
    ['CMD_MAKE_MUSIC'] = 0,
    ['CMD_KANO_SETTINGS_INTERNET'] = 0,
    ['CMD_KANO_UPDATER'] = 0,
    ['CMD_LAUNCH_SHARE'] = 0,

    -- game events
    ['GAME_EVENT_MOVE_TO_OVERWORLD'] = 0,
    ['GAME_EVENT_MINIMAP'] = 0,
}


function DialogueTrigger.create(gameStates, objectManager)
 --     print('CREATING DialogueTrigger')  -- DEBUG_TAG

    local self = setmetatable({}, DialogueTrigger)

    -- parameters
    self.gameStates = gameStates
    self.objectManager = objectManager
    self.triggers = TRIGGERS

    return self
end

function DialogueTrigger:load()
    -- loading the trigger values from the save file or the defaults if there are none
    self.triggers = g_resMngr:getSaveData().triggers or self.triggers

    -- removing old triggers from the save data
    for trigger in pairs(self.triggers) do
        if not TRIGGERS[trigger] and self.triggers[trigger] then
            self.triggers[trigger] = nil
        end
    end

    -- loading a default value for a new trigger (think updates)
    for trigger in pairs(TRIGGERS) do
        self.triggers[trigger] = self.triggers[trigger] or TRIGGERS[trigger]
    end
end

function DialogueTrigger:executeTrigger(trigger, triggerData)
    g_resMngr.playSound(g_resMngr.SFX_CONFIRM)

    if trigger == 'CMD_PONG' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/pong')

    elseif trigger == 'CMD_MAKE_PONG' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/make-pong')

    elseif trigger == 'CMD_MAKE_SNAKE' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction(
            'loading', 0, 0, '/usr/share/make-snake/snake-launch.sh'
        )

    elseif trigger == 'CMD_MAKE_MINECRAFT' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/make-minecraft')

    elseif trigger == 'CMD_TERMINAL_QUEST' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/linux-story-gui')

    elseif trigger == 'CMD_FLAPPY_JUDOKA' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/flappy-judoka')

    elseif trigger == 'CMD_MAKE_ART' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/kano-draw')

    elseif trigger == 'CMD_MAKE_MUSIC' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, '/usr/bin/make-music')

    elseif trigger == 'GAME_EVENT_MINIMAP' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        -- launch minimap
        self.objectManager:activateMenu()

    elseif trigger == 'CMD_KANO_SETTINGS_INTERNET' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction('loading', 0, 0, 'sudo /usr/bin/kano-wifi-gui')

    elseif trigger == 'CMD_KANO_UPDATER' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction(
            'loading', 0, 0, 'sudo /usr/bin/kano-updater install --gui --no-confirm'
        )

    elseif trigger == 'CMD_LAUNCH_SHARE' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        self.objectManager:activateAction(
            'loading', 0, 0, '/usr/bin/chromium-browser --start-maximized --force-device-scale-factor=1.2 '..triggerData
        )
    end

    -- check if trigger is linked to active quest
    self.gameStates:checkQuestEvent(true, trigger)
    self.gameStates:checkCodexEvent(true, trigger)
    self:save()

    if trigger == 'GAME_EVENT_MOVE_TO_OVERWORLD' then
        self.triggers[trigger] = self.triggers[trigger] + 1
        g_resMngr:getSaveData().gameManager.worldId = 'overworld'
        g_resMngr:getSaveData().gameManager.mapId = '_termsition03.lua'
        self:save()
        -- Do not override the mapId when saving
        love.event.quit(false)
    end
end

function DialogueTrigger:save()
    g_resMngr:getSaveData().triggers = self.triggers
end

function DialogueTrigger:getTriggers()
    return self.triggers
end

function DialogueTrigger:get(trigger)
    return self.triggers[trigger]
end

function DialogueTrigger:increment(trigger)
    self.triggers[trigger] = self.triggers[trigger] + 1

    -- check if trigger is linked to active quest or codex
    self.gameStates:checkQuestEvent(true, trigger)
    self.gameStates:checkCodexEvent(true, trigger)
    self:save()
end


return DialogueTrigger
