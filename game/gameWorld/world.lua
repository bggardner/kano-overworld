--[[
world.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Player = require 'game.gameWorld.characters.player'
local MapManager = require 'game.gameWorld.map.mapManager'
local MapObjectManager = require 'game.gameWorld.map.mapObjectManager'
local EvolutionManager = require 'game.gameWorld.map.evolutionManager'
local ObjectManager = require 'game.gameWorld.objects.objectManager'
local Utils = require 'system.utils'
local JSON = require 'libs.JSON'


local World = {}
World.__index = World

-- local funcion forward declaration
local postWalkObjectPassthrough


function World.create(worldId, firstMapId, gameStates)
 --     print("CREATING World")  -- DEBUG_TAG

    local self = setmetatable({}, World)

    self.gameStates = gameStates
    self.worldId = worldId

    -- Create the Evolution Manager
    self.evolutionManager = EvolutionManager.create(worldId, gameStates)

    -- Create Object Manager (speech bubbles and other pop-ups)
    self.objectManager = ObjectManager.create(gameStates)

    -- Create Map Manager (holds all the world maps and their associated bumpWorlds)
    self.mapManager = MapManager.create('res/maps/' .. worldId)
    self.currentMap = nil

    -- Map Object Manager (ncps, portal, spawn areas, etc)
    self.mapObjectManager = MapObjectManager.create(
        worldId, gameStates, self.objectManager
    )

    -- Create the Player
    self.player = Player.create(self)

    -- first map
    if firstMapId then
        self.firstMapId = firstMapId
    else
        self.firstMapId = self.mapManager:getFirstMapId()
    end

    return self
end

function World:load()
 --     print("LOADING World")  -- DEBUG_TAG

    -- Evolution Manager
    self.evolutionManager:load()
    -- Object Manager
    self.objectManager:load()
    -- Load the maps, init to the first, and add the player to the bump world
    self.mapManager:load(self.evolutionManager)
    -- Load all the Npcs created
    self.mapObjectManager:load(
        self, self.mapManager, self.player, self.gameStates, self.evolutionManager
    )
    -- Load the player
    self.player:load(self.worldId)
end

function World:init()
    -- change to first map
    local playerX = g_resMngr:getSaveData().player.x
    local playerY = g_resMngr:getSaveData().player.y
    self:changeMap(self.firstMapId, playerX, playerY)

    -- Play song
    if self.worldId == "overworld" then
        g_resMngr.playSong(g_resMngr.SONG_CHIPPYTOON, true)
    end
end

function World:update(dt)
    self.currentMap:update(dt)
    self.objectManager:update(dt)
end

function World:draw()
    self.currentMap:draw()
    self.objectManager:draw()
end

function World:save(overrideMap)
    if overrideMap then
        g_resMngr:getSaveData().gameManager.worldId = self.worldId
        g_resMngr:getSaveData().gameManager.mapId = self.currentMap:getId()
    end
    -- Player position
    local playerX, playerY = self.player:getPosition()
    g_resMngr:getSaveData().player = {x = playerX, y = playerY}
    -- Visited maps
    self.mapManager:save()
    -- Track dialogue triggers
    local data = JSON:encode(g_resMngr:getSaveData().triggers)
    Utils.trackDataJSON("kanoOverworld-triggers", "triggers", data)
end

function World:getPlayerPos()
    return self.player:getPosition()
end

function World:getWorldId()
    return self.worldId
end

function World:checkEvolutionEvent()
    self.evolutionManager:checkEvent()
end

-- Collision Resolution -----------------------------------------------------------------

function World:canWalk(x, y, player)
    local canWalk, collisions = self.currentMap:canWalk(x, y, player, self)
    local object  -- the object with which the player will collide
    local postWalkCallback = nil
    local callbackArgs = nil

    for _, collision in ipairs(collisions) do
        object = collision.other

        if object.type == 'interactable' then  -- TODO: use custom instanceOf here?
            if object:isCollidable() then
                object:activate(player.direction)
            elseif x == object.pos.x and y == object.pos.y then
                object:activate()
            end
            canWalk = canWalk and not object:isCollidable()

        elseif object.type == 'passthrough' then
            if x == object.pos.x and y == object.pos.y then
                postWalkCallback = postWalkObjectPassthrough
                callbackArgs = {object}
            end

        elseif object.type == 'passover' then
            if x == object.pos.x and y == object.pos.y then
                object:on()
            else
                object:off()
            end
            canWalk = canWalk and not object:isCollidable()
        else
            -- player must have collided with the world, not a recognised object
            canWalk = false
        end
    end

    if canWalk then
        self.objectManager:deactivate("action")
    end

    return canWalk, postWalkCallback, callbackArgs
end

function World:canWalkNpc(x, y, npc)
    local canWalk, collisions = self.currentMap:canWalk(x, y, npc)
    return canWalk and not next(collisions)
end

function postWalkObjectPassthrough(object)
    object:passthrough()
end

-- Map ----------------------------------------------------------------------------------

function World:changeMap(mapId, x, y)
    local previousAreaKey = ''
    if self.currentMap then
        previousAreaKey = self.currentMap:getAreaNameKey()
    end

    self.mapManager:changeMap(self.gameStates, previousAreaKey, mapId, self.player, x, y)
    self.currentMap = self.mapManager:getCurrentMap()
    self.mapObjectManager:changeMap(self.gameStates, self.currentMap:getId())
end

function World:changeMapDoor(mapId, doorId)
    local previousAreaKey = self.currentMap:getAreaNameKey()
    local door = self.mapObjectManager:getDoor(mapId, doorId)
    local doorX, doorY = door:getPosition()

    self.player:moveInDirection(doorX, doorY, door:getOrientation())
    self.mapManager:changeMap(self.gameStates, previousAreaKey, mapId, self.player,
                              self.player.pos.x, self.player.pos.y)
    self.currentMap = self.mapManager:getCurrentMap()
    self.mapObjectManager:changeMap(self.gameStates, self.currentMap:getId())
end

function World:bumpWorldUpdate(character, x, y, map)
    map = map or self.currentMap
    map:bumpWorldUpdate(character, x, y)
end

function World:getMapManager()
    return self.mapManager
end

function World:getFirstMapId()
    return self.firstMapId
end

function World:activateQuestsInMap()
    self.mapObjectManager:activateQuestsInMap()
end

function World:getDialogueTriggers()
    return self.mapObjectManager:getDialogueTriggers()
end

function World:incrementTrigger(trigger)
    self.mapObjectManager:incrementTrigger(trigger)
end

-- Input --------------------------------------------------------------------------------

function World:controls(isReleased, key, mousebutton)
    self.objectManager:controls(isReleased, key, mousebutton)
end


return World
