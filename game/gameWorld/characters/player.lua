--[[
player.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Character = require 'game.gameWorld.characters.character'
local Utils = require 'system.utils'

local love = love
local k = love.keyboard


local Player = {}
Player.__index = Player

-- inherit from base class Character
setmetatable(Player, {__index = Character})

-- constants
local TILE_S = Utils.tileSize()


function Player.create(world)
 --     print("CREATING Player")  -- DEBUG_TAG

    local self = Character.create(world, world.canWalk)
    self = setmetatable(self, Player)

    -- overriden from base class
    self.size = {w = TILE_S, h = TILE_S}

    -- alternative directions table
    self.alternativeDirections = {
        ['up'] = self.DIR_UP,
        ['down'] = self.DIR_DOWN,
        ['left'] = self.DIR_LEFT,
        ['right'] = self.DIR_RIGHT,
    }

    -- command line arg
    local speedArg = Utils.getArgs()['-v'] or Utils.getArgs()['--velocity']
    if speedArg and type(speedArg) == 'string' then
        self.velocity = tonumber(speedArg)
    end

    return self
end

function Player:load(worldId)
 --     print("LOADING Player")  -- DEBUG_TAG

    if worldId == 'terminalForest' then
        self.tileset = g_resMngr.loadImage("noncorporeal.png")
        self.idleAnimation = true

    elseif worldId == 'overworld' then
        -- load file from ~/.local/share/love/kanoOverworld
        self.tileset = g_resMngr.loadImage("avatar.png")
        -- if it doesn't exist load default one based on the worldId
        if not self.tileset then
            self.tileset = g_resMngr.loadImage("judoka.png")
 --             print("Error: loading default player tileset")  -- DEBUG_TAG
        end
--[[
    else   -- DEBUG_TAG_START
        assert(
            self.tileset ~= nil,
            'Loading default Player tileset failed!'
        )  -- DEBUG_TAG_END
--]]
    end

    Character.load(self)
end

-- IDLE STATE ---------------------------------------------------------------------------

function Player:updateIdle()
    -- TODO: once all characters have an idle animation, move this into character
    if self.idleAnimation then
        self:updateIdleAnimation()
    end

    if self:startWalk() then
        self:changeState(self.STATE_WALK)
    end
end

function Player:startWalk()
    if k.isDown('down', 's') then
        if self.direction == self.DIR_DOWN then
            return Character.startWalk(self, self.world, self.world.canWalk)
        else
            self.direction = self.DIR_DOWN
            self.imgIdx = self.direction - 1
        end
    elseif k.isDown('up', 'w') then
        if self.direction == self.DIR_UP then
            return Character.startWalk(self, self.world, self.world.canWalk)
        else
            self.direction = self.DIR_UP
            self.imgIdx = self.direction - 1
        end
    elseif k.isDown('left', 'a') then
        if self.direction == self.DIR_LEFT then
            return Character.startWalk(self, self.world, self.world.canWalk)
        else
            self.direction = self.DIR_LEFT
            self.imgIdx = self.direction - 1
        end
    elseif k.isDown('right', 'd') then
        if self.direction == self.DIR_RIGHT then
            return Character.startWalk(self, self.world, self.world.canWalk)
        else
            self.direction = self.DIR_RIGHT
            self.imgIdx = self.direction - 1
        end
    end
end

-- WALK STATE ---------------------------------------------------------------------------

function Player:onDestinationReached(executedCallback)
    -- TODO: if in the future the player still needs to continue walking after a
    -- postWalkCallback, it needs to be specified here (currently it prevents the
    -- player from changing direction after going through a door/portal etc)
    if (not k.isDown('down', 's', 'up', 'w', 'left', 'a', 'right', 'd')) or
       executedCallback then
        self:changeState(self.STATE_IDLE)
    else
        self:startWalk()
    end
end

-- Public -------------------------------------------------------------------------------

function Player:moveInDirection(x, y, altDirection)
    -- use an alternative direction if provided (e.g. door orientation property)
    self.direction = self.alternativeDirections[altDirection] or self.direction

    if self.direction == self.DIR_DOWN then
        self.pos = {x = x, y = y + TILE_S}
    elseif self.direction == self.DIR_UP then
        self.pos = {x = x, y = y - TILE_S}
    elseif self.direction == self.DIR_LEFT then
        self.pos = {x = x - TILE_S, y = y}
    elseif self.direction == self.DIR_RIGHT then
        self.pos = {x = x + TILE_S, y = y}
    end
end

return Player
