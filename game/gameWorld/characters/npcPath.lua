--[[
npcPath.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is an Npc with random behaviour that can just walk around.
]]--


local Npc = require 'game.gameWorld.characters.npc'


local NpcPath = {}
NpcPath.__index = NpcPath

-- inherit from base class Character
setmetatable(NpcPath, {__index = Npc})

-- local function forward declaration
local activateFaceOther


function NpcPath.create(objectManager, world, worldId, gameStates, dialogueManager)
 --     print('CREATING NpcPath')  -- DEBUG_TAG

    local self = Npc.create(objectManager, world, worldId, gameStates, dialogueManager)
    self = setmetatable(self, NpcPath)

    -- custom Tiled properties
    self.path = {}
    self.loop = true
    self.velocity = 0  -- overriden from base class

    -- path
    self.pathIndex = nil
    self.newPathIndex = nil
    self.start = true

    -- state
    self.delayActivation = false
    self.directionPriorActivate = self.direction

    return self
end

function NpcPath:load(npcObject, map, evolutionManager)
    -- getting the tileset from the map used for this npc
    self.tileset = map:getTilesetFromGID(npcObject.gid)
    Npc.load(self, npcObject, map, evolutionManager)

    -- load the object properties
    self.velocity = tonumber(npcObject.properties.velocity)
    self.loop = npcObject.properties.loop

    -- load the path
    for direction in string.gmatch(npcObject.properties.path, "([^ ]+)") do
        table.insert(self.path, tonumber(direction))
    end
    self.pathIndex, self.direction = next(self.path, self.pathIndex)

    self:changeState(self.STATE_WALK)
end

function NpcPath:update(dt)
    if self.start then
        self:startWalk()
        self.start = false
    end
    Npc.update(self, dt)
end

-- Public -------------------------------------------------------------------------------

function NpcPath:activate(othersDirection)
    if self.currentState == self.STATE_WALK then
        self.othersDirection = othersDirection
        self.delayActivation = true
        return
    end

    activateFaceOther(self, othersDirection)
end

function NpcPath:deactivate()
    Npc.deactivate(self)

    -- restore state prior the activate
    self.direction = self.directionPriorActivate
    self.delayActivation = false
end

-- WALK STATE ---------------------------------------------------------------------------

function NpcPath:onDestinationReached()
    if self.delayActivation then
        activateFaceOther(self, self.othersDirection)
    else
        self:behaviour()
    end
end

-- AI Driver ----------------------------------------------------------------------------

function NpcPath:behaviour()
    -- change direction
    self.newPathIndex, self.direction = next(self.path, self.pathIndex)

    if self.newPathIndex == nil then
        if self.loop then
            self.newPathIndex, self.direction = next(self.path, nil)
        end
    end

    if self.direction == nil then
        self.direction = self.DIR_DOWN
        self:changeState(self.STATE_IDLE)
    elseif self:startWalk() then
        self.pathIndex = self.newPathIndex
        if self.currentState ~= self.STATE_WALK then
            self:changeState(self.STATE_WALK)
        end
    end
end

-- Private ------------------------------------------------------------------------------

function activateFaceOther(self, othersDirection)
    Npc.activate(self)

    -- capture state before activation
    self.directionPriorActivate = self.direction

    -- change character state
    self.direction = self:getOppositeDirection(othersDirection)
    self.imgIdx = ((self.direction - 1) * self.tilesX) + 1
end


return NpcPath
