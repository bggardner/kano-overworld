--[[
plaque.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a Plaqe type object coming in from Tiled.
It pops up a plaque dialog when the player interacts with the object.
]]--


local MapObject = require 'game.gameWorld.map.mapObject'
local DialogueDataTemplates = require 'game.gameWorld.dialogues.dialogueDataTemplates'


local Plaque = {}
Plaque.__index = Plaque

-- inherit from base class MapObject
setmetatable(Plaque, {__index = MapObject})


function Plaque.create(profile, objectManager, dialogueManager)
 --     print('CREATING Plaque')  -- DEBUG_TAG

    local self = MapObject.create()
    self = setmetatable(self, Plaque)

    self.objectManager = objectManager
    self.dialogueManager = dialogueManager
    self.profile = profile

    -- default properties
    self.type = 'interactable'  -- the objects collision behaviour
    self.collidable = true      -- the player will not move through this object

    -- custom Tiled properties
    self.share = 0

    return self
end

function Plaque:load(signObject, map)
 --     print('LOADING Plaque "' .. signObject.name .. '"')  -- DEBUG_TAG

    MapObject.load(self, signObject)

    -- share index
    self.share = signObject.properties.share

    local v = self.profile:getMomaValue(tonumber(self.share))

    self.dialogueData = DialogueDataTemplates:momaPlaque(v.title, v.username, v.date)
    self.dialogId = "plaque"..self.share


    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function Plaque:activate()
    -- set the dialogue driver class based on the Tiled property
    local dialogue = self.dialogueManager:setDialogue(self.dialogId, self.dialogueData)

    -- activate dialog
    self.objectManager:activateAction("plaqueDialog", self.pos.x, self.pos.y, dialogue)
end

function Plaque:isCollidable()
    return self.collidable
end


return Plaque
