--[[
mapObjectManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local DialogueManager = require 'game.gameWorld.dialogues.dialogueManager'

local Npc = require 'game.gameWorld.characters.npc'
local NpcPath = require 'game.gameWorld.characters.npcPath'
local NpcRandom = require 'game.gameWorld.characters.npcRandom'
local WhiteRabbit = require 'game.gameWorld.characters.whiteRabbit'
-- local NpcSpawnArea = require 'game.gameWorld.map.npcSpawnArea'
local Portal = require 'game.gameWorld.map.portal'
local Door = require 'game.gameWorld.map.door'
local SignPost = require 'game.gameWorld.map.signPost'
local Painting = require 'game.gameWorld.map.painting'
local Plaque = require 'game.gameWorld.map.plaque'
local Terminal = require 'game.gameWorld.map.terminal'
local InternetStatus = require 'game.gameWorld.map.internetStatus'
local UpdaterTerminal = require 'game.gameWorld.map.updaterTerminal'
local PressurePlate = require 'game.gameWorld.map.pressurePlate'
local AudioVisualiser = require 'game.gameWorld.map.audioVisualiser'


local MapObjectManager = {}
MapObjectManager.__index = MapObjectManager

-- local function forward declaration
local addObjectsToCustomLayer, addPlayerToCustomLayer, activateQuests


function MapObjectManager.create(worldId, gameStates, objectManager)
 --     print('CREATING MapObjectManager')  -- DEBUG_TAG

    local self = setmetatable({}, MapObjectManager)

    self.worldId = worldId
    self.objectManager = objectManager

    -- Create the Dialogue Manager (repeat, state, decision, quest dialogues)
    self.dialogueManager = DialogueManager.create(worldId, gameStates, objectManager)

    -- the following are specific for each map
    -- structure of each table is { 'mapId' = {object, object .. } .. }
    self.staticObjectsTable = {}       -- static objects are drawn by the map
    self.dynamicObjectsTable = {}      -- dynamic ones move around and draw themselves

    -- a table of all objects with ids { 'objectId' = object }
    self.idObjectsTable = {}

    self.currentMapId = nil            -- the ID of the active map
    self.currentDynamicObjects = nil   -- the active list of dynamic objects

    return self
end

function MapObjectManager:load(world, mapManager, player, gameStates, evolutionManager)
 --     print('LOADING MapObjectManager')  -- DEBUG_TAG

    self.dialogueManager:load()

    -- Load all the objects from the maps
    local playerAdded
    local staticLayerIndex, staticObjectsLayer, dynamicObjects
    local portal, door, sign, terminal, npc, rabbit, internet, updater, npcArea
    local plaque, painting, plate, visualiser
    for _, map in pairs(mapManager:getMaps()) do

        -- initialising the object tables for the current map
        self.staticObjectsTable[map:getId()] = {}
        self.dynamicObjectsTable[map:getId()] = {}

        -- resetting the flag
        playerAdded = false

        -- getting the static objects layer
        staticLayerIndex, staticObjectsLayer = next(map:getStaticObjectsLayer())

        -- loading static objects
        for _, object in ipairs(staticObjectsLayer.objects) do

            -- Portal objects to launch other apps
            if object.type == 'Portal' then
                portal = Portal.create(world, gameStates)
                portal:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = portal
                table.insert(self.staticObjectsTable[map:getId()], portal)

            -- Door objects to go to other maps (like houses)
            elseif object.type == 'Door' then
                door = Door.create(world, gameStates)
                door:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = door
                self.staticObjectsTable[map:getId()][door:getId()] = door

            -- Sign Post objects to get directions and lore
            elseif object.type == 'SignPost' then
                sign = SignPost.create(
                    self.objectManager, self.dialogueManager, "signDialog"
                )
                sign:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = sign
                table.insert(self.staticObjectsTable[map:getId()], sign)

            -- Painting Objects for MOMA
            elseif object.type == 'Painting' then
                painting = Painting.create(
                    gameStates:getProfile(), self.objectManager, self.dialogueManager,
                    "plaqueDialog"
                )
                painting:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = painting
                table.insert(self.staticObjectsTable[map:getId()], painting)

            -- Static Plaque object for MOMA
            elseif object.type == 'PlaqueStatic' then
                sign = SignPost.create(
                    self.objectManager, self.dialogueManager, "plaqueDialog"
                )
                sign:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = sign
                table.insert(self.staticObjectsTable[map:getId()], sign)

            -- Plaque objects for MOMA
            elseif object.type == 'Plaque' then
                plaque = Plaque.create(
                    gameStates:getProfile(), self.objectManager, self.dialogueManager
                )
                plaque:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = plaque
                table.insert(self.staticObjectsTable[map:getId()], plaque)

            -- Terminal objects that resemble computers (and Kano Kits)
            elseif object.type == 'Terminal' then
                terminal = Terminal.create(self.objectManager, self.dialogueManager)
                terminal:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = terminal
                table.insert(self.staticObjectsTable[map:getId()], terminal)

            -- Presure Plate that do something when a character steps on them
            elseif object.type == 'PressurePlate' then
                plate = PressurePlate.create(self)
                plate:load(object, map)
                self.idObjectsTable[object.properties.id or ''] = plate
                table.insert(self.staticObjectsTable[map:getId()], plate)

            -- NPCs that do not move around or evolve
            elseif object.type == 'Npc' then
                if object.properties.ai == 'static'
                   and not object.properties.evolutions then
                    npc = Npc.create(
                        self.objectManager, world, self.worldId, gameStates,
                        self.dialogueManager
                    )
                    npc:load(object, map)
                    self.idObjectsTable[object.properties.id or ''] = npc
                    table.insert(self.staticObjectsTable[map:getId()], npc)
                end

--[[
            else   -- DEBUG_TAG_START
                print(
                    'MapObjectManager: load: object "' .. object.name ..
                    '" of type "' .. object.type .. '" does not belong'
                )  -- DEBUG_TAG_END
--]]
            end
        end

        -- loading dynamic objects
        for layerIndex, layer in pairs(map:getDynamicObjectLayers()) do

            dynamicObjects = {}
            for _, object in ipairs(layer.objects) do

                -- NPCs that walk around randomly or have evolution
                if object.type == 'Npc' then
                    if object.properties.ai == 'static' and object.properties.evolutions then
                        npc = Npc.create(
                            self.objectManager, world, self.worldId, gameStates,
                            self.dialogueManager
                        )
                        npc:load(object, map, evolutionManager)
                        self.idObjectsTable[object.properties.id or ''] = npc
                        table.insert(dynamicObjects, npc)

                    -- NPCs that walk around randomly
                    elseif object.properties.ai == 'random' then
                        npc = NpcRandom.create(
                            self.objectManager, world, self.worldId, gameStates,
                            self.dialogueManager, evolutionManager
                        )
                        npc:load(object, map, evolutionManager)
                        self.idObjectsTable[object.properties.id or ''] = npc
                        table.insert(dynamicObjects, npc)

                    -- NPCs that walk along a given path
                    elseif object.properties.ai == 'path' then
                        npc = NpcPath.create(
                            self.objectManager, world, self.worldId, gameStates,
                            self.dialogueManager, evolutionManager
                        )
                        npc:load(object, map, evolutionManager)
                        self.idObjectsTable[object.properties.id or ''] = npc
                        table.insert(dynamicObjects, npc)
                    end

                -- The WhiteRabbit character that runs away from the player
                elseif object.type == 'WhiteRabbit' then
                    if not mapManager:getVisitedMaps()[string.sub(map:getId(), 1, -5)] then
                        rabbit = WhiteRabbit.create(
                            self.objectManager, world, self.worldId, gameStates
                        )
                        rabbit:load(object, map)
                        self.idObjectsTable[object.properties.id or ''] = rabbit
                        table.insert(dynamicObjects, rabbit)
                    end

                -- The WiFi like internet status monitor object
                elseif object.type == 'InternetStatus' then
                    internet = InternetStatus.create(
                        self.objectManager, self.dialogueManager
                    )
                    internet:load(object, map)
                    self.idObjectsTable[object.properties.id or ''] = internet
                    table.insert(dynamicObjects, internet)

                -- An animated Terminal with copy relating to available updates
                elseif object.type == 'UpdaterTerminal' then
                    updater = UpdaterTerminal.create(
                        self.objectManager, self.dialogueManager
                    )
                    updater:load(object, map)
                    self.idObjectsTable[object.properties.id or ''] = updater
                    table.insert(dynamicObjects, updater)

                -- An animated Terminal with copy relating to available updates
                elseif object.type == 'AudioVisualiser' then
                    visualiser = AudioVisualiser.create()
                    visualiser:load(object, map)
                    self.idObjectsTable[object.properties.id or ''] = visualiser
                    table.insert(dynamicObjects, visualiser)

                -- Npc Spawn Area which generates a random number of NpcRandom
                -- elseif object.type == 'NpcSpawnArea' then
                --     npcArea = NpcSpawnArea.create(map, object, self.objectManager)
                --     for _, randomNpc in ipairs(npcArea:getNpcs()) do
                --         randomNpc:load()
                --         table.insert(dynamicObjects, randomNpc)
                --     end

--[[
                else   -- DEBUG_TAG_START
                    print(
                        'MapObjectManager: load: object "' .. object.name ..
                        '" of type "' .. object.type .. '" does not belong'
                    )  -- DEBUG_TAG_END
--]]
                end
            end

            addObjectsToCustomLayer(
                dynamicObjects, layer.properties.containsPlayer, player, map, layerIndex
            )

            if layer.properties.containsPlayer then
                playerAdded = true
            end
        end

        -- if we haven't added the player in a dynamic objects layer, add him
        -- in a custom layer just above the static objects layer
        if not playerAdded then
            addPlayerToCustomLayer(player, map, staticLayerIndex + 1)
        end
    end
end

function MapObjectManager:notifyObjects(ids, ...)
    for _, id in ipairs(ids) do
        self.idObjectsTable[id]:notify(...)
    end
end

function MapObjectManager:changeMap(gameStates, mapId)
    -- TODO: reset npcs here? / maybe move them randomly to simulate time passage?
    self.currentMapId = mapId
    self.currentDynamicObjects = self.dynamicObjectsTable[mapId] or {}

    gameStates:resetQuestMarkers()
    -- check for active quests in this map
    self:activateQuestsInMap()
end

function MapObjectManager:getDoor(mapId, doorId)
    return self.staticObjectsTable[mapId][doorId]
end

function MapObjectManager:activateQuestsInMap()
    activateQuests(self.staticObjectsTable[self.currentMapId])
    activateQuests(self.dynamicObjectsTable[self.currentMapId])
end

function MapObjectManager:getDialogueTriggers()
    return self.dialogueManager:getTriggers()
end

function MapObjectManager:incrementTrigger(trigger)
    self.dialogueManager:incrementTrigger(trigger)
end

-- Private ------------------------------------------------------------------------------

function addObjectsToCustomLayer(objects, containsPlayer, player, map, layerIndex)
    -- creating a custom layer for objects and placing it into the maps layers
    local dynamicObjectsLayer = map.map:addCustomLayer(
        'Dynamic Objects Layer', layerIndex
    )

    -- adding data to the custom layer
    dynamicObjectsLayer.objects = objects

    -- adding the player to this layer
    if containsPlayer then
        table.insert(dynamicObjectsLayer.objects, player)
    end

    -- update callback for custom layer
    function dynamicObjectsLayer:update(dt)
        for _, object in ipairs(self.objects) do
            object:update(dt)
        end
    end

    -- draw callback for custom layer
    function dynamicObjectsLayer:draw()
        for _, object in ipairs(self.objects) do
            object:draw()
        end
    end
end

function addPlayerToCustomLayer(player, map, layerIndex)
    -- creating a custom layer for the player and placing it into the maps layers
    -- just above the objects layer
    local playerLayer = map.map:addCustomLayer('Player Layer', layerIndex)

    -- adding data to the custom layer
    playerLayer.player = player

    -- update callback for custom layer
    function playerLayer:update(dt)
        self.player:update(dt)
    end

    -- draw callback for custom layer
    function playerLayer:draw()
        self.player:draw()
    end
end

function activateQuests(mapObjects)
    for _, object in pairs(mapObjects) do
        object:checkForQuest()
    end
end


return MapObjectManager
