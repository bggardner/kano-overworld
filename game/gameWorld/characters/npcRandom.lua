--[[
npcRandom.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is an Npc with random behaviour that can just walk around.
]]--


local Npc = require 'game.gameWorld.characters.npc'

local love = love
local t = love.timer


local NpcRandom = {}
NpcRandom.__index = NpcRandom

-- inherit from base class Character
setmetatable(NpcRandom, {__index = Npc})

-- local function forward declaration
local activateFaceOther


function NpcRandom.create(objectManager, world, worldId, gameStates, dialogueManager)
 --     print('CREATING NpcRandom')  -- DEBUG_TAG

    local self = Npc.create(objectManager, world, worldId, gameStates, dialogueManager)
    self = setmetatable(self, NpcRandom)

    -- behaviour
    self.directions = {self.DIR_DOWN, self.DIR_UP, self.DIR_RIGHT, self.DIR_LEFT}
    self.waitTime = 0     -- the time to wait between
    self.stateTime = 0    -- time when the state was changed last

    -- overriden from base class
    self.velocity = math.random(100, self.velocity)

    -- state
    self.delayActivation = false
    self.directionPriorActivate = self.direction

    return self
end

function NpcRandom:load(npcObject, map, evolutionManager)
    -- getting the tileset from the map used for this npc
    self.tileset = map:getTilesetFromGID(npcObject.gid)
    self.velocity = tonumber(npcObject.properties.velocity)

    Npc.load(self, npcObject, map, evolutionManager)
end

-- Public -------------------------------------------------------------------------------

function NpcRandom:activate(othersDirection)
    if self.currentState == self.STATE_WALK then
        self.othersDirection = othersDirection
        self.delayActivation = true
        return
    end

    activateFaceOther(self, othersDirection)
end

function NpcRandom:deactivate()
    Npc.deactivate(self)

    -- restore state prior the activate
    self.direction = self.directionPriorActivate
    self.delayActivation = false
end

-- WALK STATE ---------------------------------------------------------------------------

function NpcRandom:onDestinationReached()
    if self.delayActivation then
        activateFaceOther(self, self.othersDirection)
    else
        self:behaviour()
    end
end

-- IDLE STATE ---------------------------------------------------------------------------

function NpcRandom:updateIdle()
    -- Check if the random waiting time has passed
    local cTime = t.getTime()
    if cTime - self.stateTime > self.waitTime then
        if self:behaviour() then
            self.waitTime = math.random(1, 4)  -- randomly calculate waiting time
        end
    end
end

-- AI Driver ----------------------------------------------------------------------------

function NpcRandom:behaviour()
    if self.activated then
        return
    end

    local r = math.random(1, 100)
    -- change direction
    if r <= 20 and self.currentState ~= self.STATE_IDLE then
        self.direction = self.directions[math.random(1, #self.directions)]
        self:changeState(self.STATE_IDLE)
        return true

    elseif r > 20 then
        -- start walking
        if self.currentState ~= self.STATE_WALK and self:startWalk() then
            self:changeState(self.STATE_WALK)
            return true
        -- continue walking
        elseif not self:startWalk() then
            self:changeState(self.STATE_IDLE)
            -- avoid getting stuck for too long
            self.direction = self.directions[math.random(1, #self.directions)]
        end
    end
    return false
end

function NpcRandom:changeState(newState)
    Npc.changeState(self, newState)

    self.stateTime = t.getTime()
    if self.currentState == self.STATE_IDLE then
        self.waitTime = math.random(1, 4)  -- randomly calculate waiting time
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


return NpcRandom
