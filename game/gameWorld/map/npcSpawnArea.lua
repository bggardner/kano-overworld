--[[
npcSpawnArea.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

TODO: This class needs updating with a new spec. DO NOT USE YET.
]]--


local NpcRandom = require 'game.gameWorld.characters.npcRandom'
local Utils = require 'system.utils'
local Tserial = require 'libs.Tserial'

local insert = table.insert
local random = math.random


local NpcSpawnArea = {}
NpcSpawnArea.__index = NpcSpawnArea

-- local function forward declaration
local generateNpcs, initialiseSpawnAreaMatrix

-- constants
local TILE_S = Utils.tileSize()


function NpcSpawnArea.create(map, spawnAreaObject, objectManager)
 --     print('CREATING NpcSpawnArea with name ' .. spawnAreaObject.name)  -- DEBUG_TAG

    local self = setmetatable({}, NpcSpawnArea)

    local npcProperties = {
        ['image'] = 'npc2.png',
    }

    self.npcList = {}
    self.numNpcs = Tserial.unpack(spawnAreaObject.properties.numNpcs)
    self.numNpcs = random(self.numNpcs[1], self.numNpcs[2])

    -- TODO: traverse the area and add areaMatrix[x][y] = true to collidable tiles
    generateNpcs(self, map, spawnAreaObject, npcProperties, objectManager)

    return self
end

function NpcSpawnArea:getNpcs()
    return self.npcList
end

function generateNpcs(self, map, spawnAreaObject, npcProperties, objectManager)
    local areaTileX = spawnAreaObject.x / TILE_S
    local areaTileY = spawnAreaObject.y / TILE_S
    local areaTileW = spawnAreaObject.width / TILE_S
    local areaTileH = spawnAreaObject.height / TILE_S

    local areaMatrix = initialiseSpawnAreaMatrix(map, spawnAreaObject)

    local npc, x, y, posIsValid
    for _ = 1, self.numNpcs do
        posIsValid = false
        repeat
            -- generate the pos in tiles within area
            x = random(1, areaTileW)
            y = random(1, areaTileH)

            if areaMatrix[x][y] == nil then
                areaMatrix[x][y] = true
                posIsValid = true
            end
        until posIsValid

        npcProperties['tilePos'] = {
            ['x'] = areaTileX + x - 1,
            ['y'] = areaTileY + y - 1
        }

        npc = NpcRandom.create(npcProperties, objectManager)
        npc:setInitPosition(npcProperties.tilePos, npcProperties['speech'])

        map:bumpWorldAdd(
            npc, npcProperties.tilePos.x, npcProperties.tilePos.y, TILE_S, TILE_S
        )
        insert(self.npcList, npc)
    end
end

function initialiseSpawnAreaMatrix(map, spawnAreaObject)
    local areaTileW = spawnAreaObject.width / TILE_S
    local areaTileH = spawnAreaObject.height / TILE_S

    local areaMatrix = {}
    for _ = 1, areaTileW do
        insert(areaMatrix, {})
    end

    local len, items
    for x = 1, areaTileW do
        for y = 1, areaTileH do
            local posX = spawnAreaObject.x + (x - 1) * TILE_S
            local posY = spawnAreaObject.y + (y - 1) * TILE_S
            items, len = map:bumpWorldQueryRect(posX, posY, TILE_S, TILE_S)
            if len > 0 then
                areaMatrix[x][y] = true
            end
        end
    end

    return areaMatrix
end


return NpcSpawnArea
