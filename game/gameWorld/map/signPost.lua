--[[
signPost.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a SignPost type object coming in from Tiled.
It pops up a dialog when the player interacts with the object.
The dialog can be a plaqueDialog or a signDialog depending on dialogClass
]]--


local MapObject = require 'game.gameWorld.map.mapObject'


local SignPost = {}
SignPost.__index = SignPost

-- inherit from base class MapObject
setmetatable(SignPost, {__index = MapObject})


function SignPost.create(objectManager, dialogueManager, dialogClass)
 --     print('CREATING SignPost')  -- DEBUG_TAG

    local self = MapObject.create()
    self = setmetatable(self, SignPost)

    self.objectManager = objectManager
    self.dialogueManager = dialogueManager
    self.dialogClass = dialogClass

    -- default properties
    self.type = 'interactable'  -- the objects collision behaviour
    self.collidable = true      -- the player will not move through this object

    -- custom Tiled properties
    self.dialogue = ''

    return self
end

function SignPost:load(signObject, map)
 --     print('LOADING SignPost "' .. signObject.name .. '"')  -- DEBUG_TAG

    MapObject.load(self, signObject)

    -- 'dialogue' property accepts either a dialogue.lua file or a dialogueKey in lang
    self.dialogue = signObject.properties.dialogue

    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function SignPost:activate()
    -- set the dialogue driver class based on the Tiled property
    local dialogue = self.dialogueManager:setDialogue(self.dialogue)

    -- activate dialog
    self.objectManager:activateAction(self.dialogClass, self.pos.x, self.pos.y, dialogue)
end


return SignPost
