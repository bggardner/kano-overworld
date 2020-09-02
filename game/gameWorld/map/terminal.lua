--[[
terminal.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a Terminal type object coming in from Tiled.
It pops up a sign dialog when the player interacts with the object.
]]--

local Locale = require 'system.locale'
local MapObject = require 'game.gameWorld.map.mapObject'
local Utils = require 'system.utils'

local love = love
local t = love.timer


local Terminal = {}
Terminal.__index = Terminal

-- inherit from base class MapObject
setmetatable(Terminal, {__index = MapObject})


function Terminal.create(objectManager, dialogueManager)
 --     print('CREATING Terminal')  -- DEBUG_TAG

    local self = MapObject.create()
    self = setmetatable(self, Terminal)

    self.objectManager = objectManager
    self.dialogueManager = dialogueManager

    -- default properties
    self.type = 'interactable'  -- the objects collision behaviour
    self.collidable = true      -- the player will be able to move through this object

    -- custom Tiled properties
    self.dialogue = ''

    -- variables
    self.activateTime = 0       -- Only allow activating after X seconds

    return self
end

function Terminal:load(terminalObject, map)
 --     print('LOADING Terminal "' .. terminalObject.name .. '"')  -- DEBUG_TAG

    MapObject.load(self, terminalObject)

    -- 'dialogue' property accepts either a dialogue.lua file or a dialogueKey in lang
    self.dialogue = terminalObject.properties.dialogue

    -- set the name
    self.name = terminalObject.name

    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function Terminal:activate()
    local cTime = t.getTime()

    -- Wait 2 seconds until you can activate again
    if (cTime - self.activateTime) > 2 then
        -- set the dialogue driver class based on the Tiled property
        local dialogue = self.dialogueManager:setDialogue(self.dialogue)

        -- activate dialog
        self.objectManager:activateAction(
            "terminalDialog", self.pos.x, self.pos.y, dialogue, Locale.text(self.name)
        )
        g_resMngr.playSound(g_resMngr.SFX_ELECTRONIC_NOISES)
        self.activateTime = cTime
        -- Track Updater Terminal
        if self.dialogue == "UpdaterTerminal.lua" then
            Utils.trackAction("kano-overworld-updaterTerminal-activated")
        end
    end
end


return Terminal
