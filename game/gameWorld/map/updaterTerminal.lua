--[[
updaterTerminal.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a UpdaterTerminal type object coming in from Tiled.
It pops up a sign dialog when the player interacts with the object.
]]--


local Terminal = require 'game.gameWorld.map.terminal'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local t = love.timer


local UpdaterTerminal = {}
UpdaterTerminal.__index = UpdaterTerminal

-- inherit from base class MapObject
setmetatable(UpdaterTerminal, {__index = Terminal})

-- constants
local TILE_S = Utils.tileSize()  -- TODO: move this into MapObject

-- local function forward declaration
local updateUpdatesAvailable

function UpdaterTerminal.create(objectManager, dialogueManager)
 --     print('CREATING UpdaterTerminal')  -- DEBUG_TAG

    local self = Terminal.create(objectManager, dialogueManager)
    self = setmetatable(self, UpdaterTerminal)

    -- states
    self.NO_INTERNET = 1
    self.NO_UPDATES = 2          -- assumes there is internet
    self.UPDATES_AVAILABLE = 3   -- assumes there is internet
    self.state = self.NO_UPDATES

    -- image
    self.tileset = nil  -- object animation tileset image
    self.quads = {}     -- tiles from the tileset image
    self.imgIdx = 1
    self.curFrame = 0
    self.timeAnim = 0

    return self
end

function UpdaterTerminal:load(terminalObject, map)
 --     print('LOADING UpdaterTerminal "' .. terminalObject.name .. '"')  -- DEBUG_TAG

    Terminal.load(self, terminalObject, map)

    -- getting the tileset from the map used for this terminal
    self.tileset = map:getTilesetFromGID(terminalObject.gid)

    -- load tileset quads  -- TODO: move into utils
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

    -- load state
    if not Utils.isInternet()  then
        self.state = self.NO_INTERNET
        self.imgIdx = 2
    elseif not Utils.isUpdatesAvailable() then
        self.state = self.NO_UPDATES
        self.imgIdx = 1
    else
        self.state = self.UPDATES_AVAILABLE
    end
end

function UpdaterTerminal:update()
    if self.state == self.UPDATES_AVAILABLE then
        updateUpdatesAvailable(self)
    end
end

function UpdaterTerminal:draw()
    g.draw(self.tileset, self.quads[self.imgIdx], self.pos.x, self.pos.y)
end

-- Private ------------------------------------------------------------------------------

function updateUpdatesAvailable(self)
    -- animation frames are on indexes 3 to 8
    local cTime = t.getTime()
    if (cTime - self.timeAnim) > 0.3 then
        self.curFrame = (self.curFrame + 1) % 6
        local baseImg = ((self.tilesY - 1) * self.tilesX) + 1
        self.imgIdx = baseImg + self.curFrame + 2
        self.timeAnim = cTime
    end
end


return UpdaterTerminal
