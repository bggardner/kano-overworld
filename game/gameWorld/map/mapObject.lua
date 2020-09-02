--[[
mapObject.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the base class for an object placed in a Tiled map.
]]--


local Utils = require 'system.utils'


local MapObject = {}
MapObject.__index = MapObject


function MapObject.create()
    local self = setmetatable({}, MapObject)

    -- default properties
    self.collidable = true  -- the player will not move through this object
    self.pos = {}           -- {x, y} in pixels
    self.size = {}          -- {w, h} in pixels

    return self
end

function MapObject:load(mapObject)
    local TILE_S = Utils.tileSize()

    -- load the object properties from the Tiled object
    self.pos = {x = mapObject.x, y = mapObject.y - TILE_S}
    self.size = {w = mapObject.width, h = mapObject.height}
end

function MapObject:getPosition()
    return self.pos.x, self.pos.y
end

function MapObject:isCollidable()
    return self.collidable
end

function MapObject:notify()
    return  -- implement me
end

function MapObject:checkForQuest()
    return  -- implement me
end


return MapObject
