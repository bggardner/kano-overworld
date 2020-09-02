--[[
portal.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a Portal type object coming in from Tiled.
It teleports the player to a given map. The player does not collide with this object.
]]--


local MapObject = require 'game.gameWorld.map.mapObject'


local Portal = {}
Portal.__index = Portal

-- inherit from base class MapObject
setmetatable(Portal, {__index = MapObject})

-- local function forward declaration
local postAnimationCallback


function Portal.create(world, gameStates)
    local self = MapObject.create()
    self = setmetatable(self, Portal)

    self.world = world
    self.gameStates = gameStates

    -- default properties
    self.type = 'passthrough'  -- the objects collision behaviour
    self.collidable = false    -- the player will be able to move through this object

    -- custom Tiled properties
    self.nextMap = ''          -- the nextMap where the player will end up

    return self
end

function Portal:load(portalObject, map)
    MapObject.load(self, portalObject)

    -- load the object properties from the Tiled object
    self.nextMap = portalObject.properties.nextMap

    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function Portal:passthrough()
    g_resMngr.playSound(g_resMngr.SFX_RABBITHOLE)
    self.gameStates:activateAnimation('circleWipeIn', postAnimationCallback, self)
end


-- Private ------------------------------------------------------------------------------

function postAnimationCallback(self)
    -- teleport the player to the given map and place him on the spawn point
    self.world:changeMap(self.nextMap)

    self.gameStates:activateAnimation('circleWipeOut')
end


return Portal
