--[[
pressurePlate.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a PressurePlate type object coming in from Tiled.

It can be used to notify a list of objects through their ids with a list of parameters.
]]--


local MapObject = require 'game.gameWorld.map.mapObject'
local Tserial = require 'libs.Tserial'


local PressurePlate = {}
PressurePlate.__index = PressurePlate

-- inherit from base class
setmetatable(PressurePlate, {__index = MapObject})


function PressurePlate.create(mapObjectManager)
    local self = MapObject.create()
    self = setmetatable(self, PressurePlate)

    self.mapObjectManager = mapObjectManager

    -- default properties
    self.type = 'passover'    -- the objects collision behaviour
    self.collidable = false   -- the player will be able to move through this object

    -- custom Tiled properties
    self.connectedIds = {}    -- the ids of objects we need to notify
    self.data = {}            -- the parameters to be passed to the objects on `pressed`

    return self
end

function PressurePlate:load(pressurePlateObject, map)
    MapObject.load(self, pressurePlateObject)

    -- load the object properties from the Tiled object
    self.name = pressurePlateObject.name

    -- the list of ids of objects that are going to be notified
    self.connectedIds = Tserial.unpack(pressurePlateObject.properties.connectedIds)

    -- the data to be passed to each object which this object is connected to
    self.data = Tserial.unpack(pressurePlateObject.properties.data)

    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function PressurePlate:on()
    self.mapObjectManager:notifyObjects(self.connectedIds, 'pressed', unpack(self.data))
end

function PressurePlate:off()
    self.mapObjectManager:notifyObjects(self.connectedIds, 'released')
end


return PressurePlate
