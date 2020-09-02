--[[
gameManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Manages all the maps in the game
]]--


local World = require 'game.gameWorld.world'
local Utils = require 'system.utils'

local love = love
local f = love.filesystem
local g = love.graphics
local m = love.mouse


local GameManager = {}
GameManager.__index = GameManager


function GameManager.create()
 --     print("CREATING Game Manager")  -- DEBUG_TAG

    local self = setmetatable({}, GameManager)

    return self
end

function GameManager:preload(gameStates)
 --     print("PRE LOADING Game Manager")  -- DEBUG_TAG

    -- command line args
    local worldArg = Utils.getArgs()['-w'] or Utils.getArgs()['--world']
    local mapArg = Utils.getArgs()['-m'] or Utils.getArgs()['--map']

    -- If we're loading a saved game, get the mapId from the savefile
    local worldId, currentMapId
    if worldArg and mapArg then
        worldId = worldArg
        currentMapId = mapArg
    else
        worldId = g_resMngr:getSaveData().gameManager.worldId
        currentMapId = g_resMngr:getSaveData().gameManager.mapId
    end

    -- Create World with all the maps, npcs, player, etc.
    self.world = World.create(worldId, currentMapId, gameStates)
    currentMapId = self.world:getFirstMapId()

    -- size
    local tile = Utils.tileSize()
    local map = f.load("res/maps/" .. worldId .. "/" .. currentMapId)()
    local mapSize = {x = map.layers[1].width * tile, y = map.layers[1].height * tile}

    -- scale screen
    local sw, sh = g.getDimensions()
    local scaleX = sw / mapSize.x
    local scaleY = sh / mapSize.y
    Utils.setScale(scaleX, scaleY)
end

function GameManager:load()
 --     print("LOADING Game Manager")  -- DEBUG_TAG

    -- Load the world and all its objects
    self.world:load()
end

function GameManager:update(dt)
    self.world:update(dt)
end

function GameManager:draw()
    self.world:draw()
end

function GameManager:init()
    m.setVisible(false)

    --
    self.world:init()

    --
    self.world:checkEvolutionEvent()
end

function GameManager.launchApp(cmd)
    Utils.launchApp(cmd)
end

-- World ---------------------------------------------------------------------------------

function GameManager:getPlayerPos()
    return self.world:getPlayerPos()
end

function GameManager:save(overrideMap)
    self.world:save(overrideMap)
end

function GameManager:changeMap(mapId)
    self.world:changeMap(mapId)
end

function GameManager:getMapManager()
    return self.world:getMapManager()
end

function GameManager:getWorldId()
    return self.world:getWorldId()
end

function GameManager:activateQuestsInMap()
    self.world:activateQuestsInMap()
end

function GameManager:getDialogueTriggers()
    return self.world:getDialogueTriggers()
end

function GameManager:incrementTrigger(trigger)
    self.world:incrementTrigger(trigger)
end

function GameManager:checkEvolutionEvent()
    self.world:checkEvolutionEvent()
end

-- Input --------------------------------------------------------------------------------

function GameManager:controls(isReleased, key, mousebutton)
    self.world:controls(isReleased, key, mousebutton)
end


return GameManager
