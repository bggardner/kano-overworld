--[[
painting.lua

Copyright (C) 2016-2019 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a Painting type object coming in from Tiled.
It pops up a dialog when the player interacts with the object.
The dialog can be a plaqueDialog or a signDialog depending on dialogClass
]]--


local MapObject = require 'game.gameWorld.map.mapObject'


local Painting = {}
Painting.__index = Painting

-- inherit from base class MapObject
setmetatable(Painting, {__index = MapObject})


function Painting.create(profile, objectManager, dialogueManager, dialogClass)
 --     print('CREATING Painting')  -- DEBUG_TAG

    local self = MapObject.create()
    self = setmetatable(self, Painting)

    self.objectManager = objectManager
    self.dialogueManager = dialogueManager
    self.dialogClass = dialogClass
    self.profile = profile

    -- default properties
    self.type = 'interactable'  -- the objects collision behaviour
    self.collidable = true      -- the player will not move through this object

    -- custom Tiled properties
    self.dialogue = ''
    self.share = 0

    return self
end

function Painting:load(paintingObject, map)
 --     print('LOADING Painting "' .. paintingObject.name .. '"')  -- DEBUG_TAG

    MapObject.load(self, paintingObject)

    -- 'dialogue' property accepts either a dialogue.lua file or a dialogueKey in lang
    self.dialogue = paintingObject.properties.dialogue
    self.share = paintingObject.properties.share


    -- trigger data
    local v = self.profile:getMomaValue(tonumber(self.share))
    self.triggerData = v.url


    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function Painting:activate()
    -- set the dialogue driver class based on the Tiled property
    local dialogue = self.dialogueManager:setDialogue(self.dialogue, nil, self.triggerData)

    -- activate dialog
    self.objectManager:activateAction(self.dialogClass, self.pos.x, self.pos.y, dialogue)
end


return Painting
