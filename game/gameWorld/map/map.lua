--[[
map.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Map class
]]--


local Utils = require 'system.utils'
local STI = require 'libs.STI'
local bump = require 'libs.bump.bump'
local Tserial = require 'libs.Tserial'

local love = love


local Map = {}
Map.__index = Map

-- local function forward declaration
local mapCanvasAllocator

-- constants
local TILE_S = Utils.tileSize()


function Map.create(id)
 --     print("CREATING Map with id " .. id)  -- DEBUG_TAG

    local self = setmetatable({}, Map)

    self.id = id              -- the map filename

    self.map = {}             -- the STI map object
    self.width = nil          -- the map width in px
    self.height = nil         -- the map height in px

    -- custom Tiled properties
    self.nextMapUp = nil      -- up, down, left, right maps as filenames (ids)
    self.nextMapDown = nil
    self.nextMapLeft = nil
    self.nextMapRight = nil
    self.evolutions = ''

    self.staticObjectsLayer = {}   -- static map objects won't move, so STI draws them
    self.dynamicObjectLayers = {}  -- dynamic objects will have their own draw and update
    self.spawnPos = {}             -- {x, y} in pixels where the player should spawn

    return self
end

function Map:load(path, evolutionManager)
 --     print("LOADING Map from " .. path)  -- DEBUG_TAG

    -- Create the collision world where the player, npc, and map will collide
    self.bumpWorld = bump.newWorld(TILE_S)

    -- load the map data using STI library, initialise the world, and add the player
    self.map = STI.new(path, {"bump"})
    self.map:bump_init(self.bumpWorld)

    -- get the game objects from the map and the SpawnPoint position
    for i, layer in ipairs(self.map.layers) do

        if layer.type == 'objectgroup' and layer.name ~= 'Dynamic Objects Layer' then
            for j, object in ipairs(layer.objects) do
                if object.type == 'SpawnPoint' then
                    self.spawnPos = {
                        ['x'] = object.x,
                        ['y'] = object.y - TILE_S,
                    }
                    table.remove(layer.objects, j)
                    break
                end
            end
            self.staticObjectsLayer[i] = layer

        elseif layer.type == 'objectgroup' and layer.name == 'Dynamic Objects Layer' then
            self.dynamicObjectLayers[i] = layer
            self.map:removeLayer(i)
        end
    end

    -- adding the map properties
    self.nextMapUp = self.map.properties.nextMapUp  -- these can be nil
    self.nextMapDown = self.map.properties.nextMapDown
    self.nextMapLeft = self.map.properties.nextMapLeft
    self.nextMapRight = self.map.properties.nextMapRight

    self.width = self.map.layers[1].width * TILE_S
    self.height = self.map.layers[1].height * TILE_S

    -- the 'evolutions' property is optional
    self.evolutions = Tserial.unpack(self.map.properties.evolutions or '{}')
    for _, evolutionFile in ipairs(self.evolutions) do
        evolutionManager:register(self, evolutionFile)
    end
end

function Map:refresh()
    self.map:refresh()
end
function Map:discard()
    self.map:discard()
end

function Map:update(dt)
    self.map:update(dt)
end

function Map:draw()
    self.map:draw()

    -- Draw the collision bump map
--[[
    if Utils.isDebugMode() then  -- DEBUG_TAG_START
        self.map:bump_draw(self.bumpWorld)
    end  -- DEBUG_TAG_END
--]]
end

function Map:canWalk(x, y, character, world)
    -- only the player can trigger a change of the map,
    if world then
        if (x < 0 and self.nextMapLeft ~= nil) then
            world:changeMap(self.nextMapLeft, self.width - TILE_S, y)
            return false, {}
        end
        if (x >= self.width and self.nextMapRight ~= nil) then
            world:changeMap(self.nextMapRight, 0, y)
            return false, {}
        end
        if (y < 0 and self.nextMapUp ~= nil) then
            world:changeMap(self.nextMapUp, x, self.height - TILE_S)
            return false, {}
        end
        if (y >= self.height and self.nextMapDown ~= nil) then
            world:changeMap(self.nextMapDown, x, 0)
            return false, {}
        end
    end

    -- check for map off-limits
    if (x < 0 or x >= self.width or y < 0 or y >= self.height) then
        return false, {}
    end

    -- check if there are any collisions between the placharacteryer and the bumpWorld
    local _, _, collisions, _ = self.bumpWorld:check(
        character, x, y, character:getFilter()
    )

    -- returns true if the collisions table is empty
    return true, collisions
end

function Map:bumpWorldAdd(object, x, y, width, height)
    width = width or TILE_S
    height = height or TILE_S
    self.bumpWorld:add(object, x, y, width, height)
end

function Map:bumpWorldRemove(object)
    self.bumpWorld:remove(object)
end

function Map:bumpWorldUpdate(object, x, y)
    self.bumpWorld:update(object, x, y)
end

function Map:bumpWorldQueryRect(x, y, width, height)
    return self.bumpWorld:queryRect(x, y, width, height)
end

function Map:getId()
    return self.id
end

function Map:getSpawnPos()
    return self.spawnPos
end

function Map:getStaticObjectsLayer()
    return self.staticObjectsLayer
end

function Map:getDynamicObjectLayers()
    return self.dynamicObjectLayers
end

function Map:getAreaNameKey()
    return self.map.properties.areaNameKey
end

function Map:getTilesetFromGID(gid)
    for _, tileset in ipairs(self.map.tilesets) do
        if tileset.firstgid <= gid and gid < tileset.firstgid + tileset.tilecount then
            return tileset.image, gid - tileset.firstgid + 1
        end
    end
end

-- Public - Evolution Actions -----------------------------------------------------------

function Map:setLayerVisibility(layerName, visibility)
    -- Set the visibility of the map layer.
    self.map.layers[layerName].visible = visibility

    -- Update the collision information.
    if visibility == true then
        self.map:bump_addLayer(layerName, self.bumpWorld)
    else
        self.map:bump_removeLayer(layerName, self.bumpWorld)
    end
end

-- STI Video Memory Patch ---------------------------------------------------------------

local canvases = {}
function mapCanvasAllocator(w, h)
    local key = tostring(w)..','..tostring(h)
    if canvases[key] then
        return canvases[key]
    else
        local canvas = love.graphics.newCanvas(w,h)
        canvases[key] = canvas
        return canvas
    end
end
STI:setCanvasAllocator(mapCanvasAllocator)


return Map
