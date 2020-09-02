--[[
mapManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Map = require 'game.gameWorld.map.map'
local Locale = require 'system.locale'
local Utils = require 'system.utils'
local JSON = require 'libs.JSON'


local MapManager = {}
MapManager.__index = MapManager


function MapManager.create(mapsDir)
 --     print('CREATING MapManager')  -- DEBUG_TAG

    local self = setmetatable({}, MapManager)

    -- Create list of maps
    self.mapsTable = {}       -- the table of maps from the given dir 'mapPath' = Map()
    self.mapsDir = mapsDir
    -- List of visited maps
    self.mapsVisited = {}

    -- Create all the maps in the given/maps/dir/*.lua (but not from folders recursively)
    -- Note that the following call to Utils goes to the filesystem - expensive
    for _, mapName in ipairs(Utils.getFileTree(self.mapsDir)) do
        if Utils.stringEndsWith(mapName, '.lua') then
            self.mapsTable[mapName] = Map.create(mapName)
	    if Utils.stringStartsWith(mapName, '_') then
	        self.firstMapId = mapName
            end
        end
        -- Remove last 4 characters (.lua) of mapName
        local name = string.sub(mapName, 1, -5)
        self.mapsVisited[name] = false
    end

    self.currentMap = nil
    self.currentMapId = ''

    return self
end

function MapManager:load(evolutionManager)
 --     print("LOADING MapManager")  -- DEBUG_TAG

    -- Load all the maps previously created
    for mapId, map in pairs(self.mapsTable) do
        map:load(self.mapsDir .. '/' .. mapId, evolutionManager)
    end

    -- Load the visited maps from the save file
    local savedMaps = g_resMngr:getSaveData().mapsVisited
    if savedMaps then
        for mapId, v in pairs(savedMaps) do
            if not self.mapsVisited[mapId] then
                self.mapsVisited[mapId] = v
            end
        end
    end
end

function MapManager:changeMap(gameStates, previousAreaKey, mapId, player, x, y)
    -- if mapId is nil, use the specified first map
    mapId = mapId or self.firstMapId

    -- if mapId is not in this world, use first map
    if not self.mapsTable[mapId] then
        mapId = self.firstMapId
    end

    if self.currentMap ~= self.mapsTable[mapId] then
        if self.currentMap then
            self.currentMap:discard()
            self.currentMap:bumpWorldRemove(player)
        end
        self.currentMap = self.mapsTable[mapId]
        self.currentMapId = mapId
        self.currentMap:refresh()

        -- set the position of the player in the new map
        local fallbackToSpawnPos = true
        if x and y then
            local _, len = self.currentMap:bumpWorldQueryRect(
                x, y, player.size.w, player.size.h
            )
            -- check that we are not positioned on a collidable tile or outside the map
            if len == 0 and
               x < self.mapsTable[mapId].width and y < self.mapsTable[mapId].height and
               x >= 0 and y >= 0 then
                player:setInitPosition(x, y)
                self.currentMap:bumpWorldAdd(player, x, y)
                fallbackToSpawnPos = false
            end

        end
        if fallbackToSpawnPos then
            -- If x ws not provided then use spawn position
            local spawnPos = self.currentMap:getSpawnPos()
            player:setInitPosition(spawnPos.x, spawnPos.y)
            self.currentMap:bumpWorldAdd(player, spawnPos.x, spawnPos.y)
--[[
            print(  -- DEBUG_TAG_START
                'MapManager: changeMap: WARNING - Player pos was reset to SpawnPoint.' ..
                ' If you used magic travel, ignore this.'
            )       -- DEBUG_TAG_END
--]]
        end
    end

    -- Notify the uiManager about the change of maps
    gameStates.uiManager:changeMap()

    -- remove last 4 characters (.lua) of mapName
    local anim = false
    local name = string.sub(mapId, 1, -5)
    -- show New Area pop-up if area hasn't been visited
    if not self.mapsVisited[name] then
        local area = gameStates:hasAreaBeenVisited(mapId, self.mapsVisited)
        if area ~= "" then
            gameStates:activateCentrePopUp("map", Locale.text("newArea"),
                                           Locale.text(area))
            anim = true
        end
        -- track the new map discovered
        Utils.trackData("kanoOverworld-new-map-discovered", "name", name)
    end
    -- mark the map as visited
    self.mapsVisited[name] = true
    -- Bottom right animation and sound
    local currentAreaKey = self.currentMap:getAreaNameKey()
    if previousAreaKey ~= currentAreaKey then
        g_resMngr:playSoundBed(currentAreaKey)
        if not anim then
            gameStates:activateBottomRightPopUp(Locale.text(currentAreaKey))
        end
    end

    -- Update percentage of map discovered variable
    gameStates:setDiscoveredVariable()
end

function MapManager:save()
    g_resMngr:getSaveData().mapsVisited = self.mapsVisited
    -- track visited maps
    local visits = 0
    local total = 0
    for mapId, _ in pairs(self.mapsVisited) do
        if self.mapsVisited[mapId] then
            visits = visits + 1
        end
        total = total + 1
    end
    local data = JSON:encode({visited = visits, total = total})
    Utils.trackDataJSON("kanoOverworld-maps-visited", "maps", data)
end

function MapManager:getMap(mapId)
    return self.mapsTable[mapId]
end

function MapManager:getMaps()
    return self.mapsTable
end

function MapManager:getCurrentMap()
    return self.currentMap
end

function MapManager:getCurrentAreaName()
    return self.currentMap:getAreaName()
end

function MapManager:getVisitedMaps()
    return self.mapsVisited
end

function MapManager:getFirstMapId()
    return self.firstMapId
end


return MapManager
