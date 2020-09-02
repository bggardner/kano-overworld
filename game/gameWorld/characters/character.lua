--[[
character.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the base class for a moving character, such as the Player or spawned Npcs.
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local t = love.timer


local Character = {}
Character.__index = Character

-- constants
local TILE_S = Utils.tileSize()


function Character.create(world, canWalkFunc)
    local self = setmetatable({}, Character)

    self.world = world
    self.canWalkFunc = canWalkFunc  -- the world query function to check for collisions

    -- states
    self.STATE_IDLE = 1
    self.STATE_WALK = 2
    self.STATE_TALKING = 3
    self.states = {}
    self.currentState = self.STATE_IDLE

    -- directions
    self.DIR_DOWN = 2
    self.DIR_UP = 3
    self.DIR_LEFT = 4
    self.DIR_RIGHT = 5
    self.direction = self.DIR_DOWN  -- the facing direction
    self.velocity = 200             -- movement speed

    -- position
    self.pos = {x = 0, y = 0}       -- position in pixels on the screen
    self.dest = {x = 0, y = 0}      -- walking destination in pixels
    self.size = {w = 0, h = 0}      -- size of character in pixels

    -- image
    self.tileset = nil              -- character animation image
    self.quads = {}                 -- tiles from the tileset image
    self.imgIdx = 1
    self.curFrame = 1
    self.timeAnim = 0
    self.idleAnimation = false      -- whether the idle animation is available in tileset

    -- collision
    self.collidable = true          -- part of the bump world, generates collision events
    self.postWalkCallback = nil     -- the world query may return a callback post walking
    self.callbackArgs = nil         -- the args for the post walking callback from world

    return self
end

function Character:load()
    -- initialising the table here to grab overriden superclass methods
    self.states = {
        [self.STATE_IDLE] = self.updateIdle,        -- idle animation (or static)
        [self.STATE_WALK] = self.updateWalk,        -- walking animation tile to tile
        [self.STATE_TALKING] = self.updateTalking,  -- speech bubble activated
    }

    if not self.tileset then
        return
    end

    local tilesetW, tilesetH = self.tileset:getWidth(), self.tileset:getHeight()
    local tileW, tileH = TILE_S, TILE_S
    self.tilesX = tilesetW / TILE_S
    self.tilesY = tilesetH / TILE_S

    local c = 1
    local rowTile = 0
    local colTile = 0
    for _ = 1, self.tilesY do
        for _ = 1, self.tilesX do
            self.quads[c] = g.newQuad(colTile, rowTile, tileW, tileH, tilesetW, tilesetH)
            colTile = colTile + tileW
            c = c + 1
        end
        colTile = 0
        rowTile = rowTile + tileH
    end
end

function Character:update(dt)
    -- call the update of the current state
    self.states[self.currentState](self, dt)
end

function Character:draw()
    -- draw shadow
    Colour.set(Colour.BLACK, 50)
    g.ellipse(
        "fill", self.pos.x + (TILE_S / 2), self.pos.y + TILE_S - 3,
        TILE_S * 0.3, TILE_S * 0.1
    )
    Colour.reset()

    -- character
    g.draw(self.tileset, self.quads[self.imgIdx], self.pos.x, self.pos.y)
end

-- WALK STATE ---------------------------------------------------------------------------

function Character:updateWalk(dt)
    self:updateWalkAnimation()

    -- walk to destination
    if self.direction == self.DIR_DOWN then
        local new_y = self.pos.y + (self.velocity * dt)
        self.pos.y = math.min(new_y, self.dest.y)
    elseif self.direction == self.DIR_UP then
        local new_y = self.pos.y - (self.velocity * dt)
        self.pos.y = math.max(new_y, self.dest.y)
    elseif self.direction == self.DIR_LEFT then
        local new_x = self.pos.x - (self.velocity * dt)
        self.pos.x = math.max(new_x, self.dest.x)
    elseif self.direction == self.DIR_RIGHT then
        local new_x = self.pos.x + (self.velocity * dt)
        self.pos.x = math.min(new_x, self.dest.x)
    end

    -- check if the character has arrived at destination and exec the callback from world
    if (self.pos.x == self.dest.x) and (self.pos.y == self.dest.y) then
        if self.postWalkCallback then
            self.postWalkCallback(unpack(self.callbackArgs))
            self.postWalkCallback = nil
            self:onDestinationReached(true)
        else
            self:onDestinationReached(false)
        end
    end
end

function Character:updateWalkAnimation()
    local cTime = t.getTime()
    if (cTime - self.timeAnim) > 0.1 then
        self.curFrame = (self.curFrame + 1) % 4
        local baseImg = ((self.direction - 1) * self.tilesX) + 1
        self.imgIdx = baseImg + self.curFrame
        self.timeAnim = cTime
    end
end

function Character.onDestinationReached()
    -- implement me!
end

-- IDLE STATE ---------------------------------------------------------------------------

function Character.updateIdle(_)
    -- implement me!
end

function Character:updateIdleAnimation()
    local cTime = t.getTime()
    if (cTime - self.timeAnim) > 0.1 then
        self.curFrame = (self.curFrame + 1) % 4
        local baseImg = ((self.tilesY - 1) * self.tilesX) + 1
        self.imgIdx = baseImg + self.curFrame
        self.timeAnim = cTime
    end
end

-- TALK STATE ---------------------------------------------------------------------------

function Character:updateTalk(_)
    -- Check if I have finished talking
    if not self.objectManager:isActive("action") and
       not self.objectManager:isActive("bubble") then
        self:changeState(self.STATE_IDLE)
    end
end

-- Public -------------------------------------------------------------------------------

function Character:startWalk()
    local newDest
    local canWalk

    -- move up, down, left, right based on the direction the player is facing
    if self.direction == self.DIR_DOWN then
        newDest = {x = self.pos.x, y = self.pos.y + TILE_S}
    elseif self.direction == self.DIR_UP then
        newDest = {x = self.pos.x, y = self.pos.y - TILE_S}
    elseif self.direction == self.DIR_LEFT then
        newDest = {x = self.pos.x - TILE_S, y = self.pos.y}
    elseif self.direction == self.DIR_RIGHT then
        newDest = {x = self.pos.x + TILE_S, y = self.pos.y}
    end

    -- call the given collision world query
    if self.collidable then
        canWalk, self.postWalkCallback, self.callbackArgs = self.canWalkFunc(
            self.world, newDest.x, newDest.y, self
        )
    end

    -- if the character can walk there, occupy
    if not self.collidable or canWalk then
        self.dest = newDest
        if self.collidable then
            self.world:bumpWorldUpdate(self, newDest.x, newDest.y)
        end
        return true
    end
    return false
end

function Character:changeState(newState)
    self.currentState = newState
    self.curFrame = 1
    self.timeAnim = 0
    if self.currentState == self.STATE_WALK then
        self.imgIdx = ((self.direction - 1) * self.tilesX) + 1
    elseif self.currentState == self.STATE_IDLE then
        self.imgIdx = self.direction - 1
    end
end

function Character:getPosition()
    return self.pos.x, self.pos.y
end

function Character:setInitPosition(x, y)
    self.pos.x = x
    self.pos.y = y
    self:changeState(self.STATE_IDLE)
end

function Character:isCollidable()
    return self.collidable
end

function Character:getOppositeDirection(direction)
    direction = direction or self.direction

    if direction == self.DIR_UP then
        return self.DIR_DOWN
    elseif direction == self.DIR_DOWN then
        return self.DIR_UP
    elseif direction == self.DIR_LEFT then
        return self.DIR_RIGHT
    elseif direction == self.DIR_RIGHT then
        return self.DIR_LEFT
--[[
    else                                       -- DEBUG_TAG_START
        assert(false, 'direction is invalid')  -- DEBUG_TAG_END
--]]
    end
end

-- Collision Type Filter (Bump lib) -----------------------------------------------------

local characterFilter = function(_, other)
    if (other.type == 'interactable' and other.collidable == false) or
        other.type == 'passthrough' or other.type == 'passover' then
        return 'cross'
    else
        return 'slide'
    end
end

function Character:getFilter()
    return characterFilter
end


return Character
