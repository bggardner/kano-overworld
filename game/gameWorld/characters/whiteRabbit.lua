--[[
whiteRabbit.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is an Npc with random behaviour that can just walk around.
]]--


local NpcPath = require 'game.gameWorld.characters.npcPath'


local WhiteRabbit = {}
WhiteRabbit.__index = WhiteRabbit

-- inherit from base class Character
setmetatable(WhiteRabbit, {__index = NpcPath})


function WhiteRabbit.create(objectManager, world, worldId, gameStates)
    local self = NpcPath.create(objectManager, world, worldId, gameStates)
    self = setmetatable(self, WhiteRabbit)

    -- overriden from base class
    self.collidable = false

    -- custom Tiled properties
    self.disappears = false

    -- visibility
    self.visible = true

    return self
end

function WhiteRabbit:load(npcObject, map)
    NpcPath.load(self, npcObject, map)

    -- load the object properties
    self.disappears = npcObject.properties.disappears
end

function WhiteRabbit:draw()
    if self.visible then
        NpcPath.draw(self)
    end
end

-- AI Driver ----------------------------------------------------------------------------

function WhiteRabbit:behaviour()
    NpcPath.behaviour(self)

    -- check if the rabbit should disappear into thin air
    if self.newPathIndex == nil and not self.loop and self.disappears then
        self.visible = false  -- TODO: ask world to remove me from objects table
    end
end


return WhiteRabbit
