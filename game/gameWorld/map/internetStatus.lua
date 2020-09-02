--[[
internetStatus.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a InternetStatus type object coming in from Tiled.
It pops up a sign dialog when the player interacts with the object.
]]--


local MapObject = require 'game.gameWorld.map.mapObject'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local t = love.timer


local InternetStatus = {}
InternetStatus.__index = InternetStatus

-- inherit from base class MapObject
setmetatable(InternetStatus, {__index = MapObject})

-- constants
local TILE_S = Utils.tileSize()  -- TODO: move this into MapObject


function InternetStatus.create(objectManager, dialogueManager)
 --     print('CREATING InternetStatus')  -- DEBUG_TAG

    local self = MapObject.create()
    self = setmetatable(self, InternetStatus)

    self.objectManager = objectManager
    self.dialogueManager = dialogueManager

    -- states
    self.NO_INTERNET = 1
    self.NO_UPDATES = 2          -- assumes there is internet
    self.UPDATES_AVAILABLE = 3   -- assumes there is internet
    self.state = self.NO_INTERNET

    -- image
    self.tileset = nil  -- object animation tileset image
    self.quads = {}     -- tiles from the tileset image
    self.imgIdx = 1
    self.curFrame = 1
    self.timeAnim = 0

    return self
end

function InternetStatus:load(statusObject, map)
 --     print('LOADING InternetStatus "' .. statusObject.name .. '"')  -- DEBUG_TAG

    MapObject.load(self, statusObject)

    -- getting the tileset from the map used for this terminal
    self.tileset = map:getTilesetFromGID(statusObject.gid)

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
    elseif not Utils.isUpdatesAvailable() then
        self.state = self.NO_UPDATES
        self.imgIdx = 3
    else
        self.state = self.UPDATES_AVAILABLE
        self.imgIdx = 4
    end

    -- add this object to the bumpWord to get collision events
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
end

function InternetStatus:update()
    if self.state == self.NO_INTERNET then
        self:updateNoInternet()
    end
end

function InternetStatus:draw()
    g.draw(self.tileset, self.quads[self.imgIdx], self.pos.x, self.pos.y)
end

function InternetStatus:updateNoInternet()
    -- animation frames are on indexes 1 to 2
    local cTime = t.getTime()
    if (cTime - self.timeAnim) > 0.6 then
        self.curFrame = (self.curFrame + 1) % 2
        local baseImg = ((self.tilesY - 1) * self.tilesX) + 1
        self.imgIdx = baseImg + self.curFrame
        self.timeAnim = cTime
    end
end


return InternetStatus
