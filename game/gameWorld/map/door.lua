--[[
door.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local MapObject = require 'game.gameWorld.map.mapObject'


local Door = {}
Door.__index = Door

-- inherit from base class MapObject
setmetatable(Door, {__index = MapObject})

-- local function forward declaration
local postAnimationCallback


function Door.create(world, gameStates)
    local self = MapObject.create()
    self = setmetatable(self, Door)

    self.world = world
    self.gameStates = gameStates

    -- default properties
    self.type = 'passthrough'  -- the objects collision behaviour
    self.collidable = false    -- the player will be able to move through this object

    -- custom Tiled properties
    self.id = ''           -- the id of the door to which this one is connected to
    self.nextMap = ''      -- the map to change to (which contains the 'other' door)
    self.orientation = ''  -- the direction in which the player will move (optional)

    return self
end

function Door:load(doorObject, map)
    MapObject.load(self, doorObject)

    -- load the object properties from the Tiled object
    self.id = doorObject.properties.id
    self.nextMap = doorObject.properties.nextMap
    self.orientation = doorObject.properties.orientation

    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function Door:passthrough()
    self.gameStates:activateAnimation('rectangleWipeIn', postAnimationCallback, self)
end

function Door:getId()
    return self.id
end

function Door:getNextMap()
    return self.nextMap
end

function Door:getOrientation()
    return self.orientation
end

-- Private ------------------------------------------------------------------------------

function postAnimationCallback(self)
    self.world:changeMapDoor(self.nextMap, self.id)

    self.gameStates:activateAnimation('rectangleWipeOut')
end


return Door
