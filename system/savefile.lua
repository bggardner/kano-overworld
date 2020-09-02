--[[
savefile.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the Savefile manager which handles the file operations.
]]--


local Utils = require 'system.utils'
local Tserial = require 'libs.Tserial'
local Version = require 'system.version'
local love = love


local Savefile = {}
Savefile.__index = Savefile

-- local function forward declaration
local containsKey, validateSaveFile, validateBackwardsCompatibility
local validatePlayerPosition

-- contants
local SAVEFILE_NAME = 'savefile-data.lua'
local DEFAULT_SAVEFILE_PATH = 'system/' .. SAVEFILE_NAME
local SYNC_DIR = 'sync/'
local SYNC_SAVEFILE_PATH = SYNC_DIR .. SAVEFILE_NAME


function Savefile.create()
 --     print("CREATING Savefile")  -- DEBUG_TAG
    local self = setmetatable({}, Savefile)

    return self
end

function Savefile:load()
    local savefilePath = false
    self.defaultData = love.filesystem.load(DEFAULT_SAVEFILE_PATH)()

    love.filesystem.createDirectory(SYNC_DIR)

    -- look for the savefile at the default location or the sync dir
    if love.filesystem.getInfo(SAVEFILE_NAME) then
        savefilePath = SAVEFILE_NAME
    elseif love.filesystem.getInfo(SYNC_SAVEFILE_PATH) then
        savefilePath = SYNC_SAVEFILE_PATH
    end

--[[
    if Utils.getArgs()['--no-load'] then  -- DEBUG_TAG_START
        savefilePath = nil
    end                                   -- DEBUG_TAG_END
--]]

    -- validate the savefile if found, or set defaults otherwise
    if savefilePath then
 --         print('Savefile: load: savefile found..')  -- DEBUG_TAG

        local serialisedData = love.filesystem.read(savefilePath)
        self.saveData = Tserial.unpack(serialisedData)

        -- Check that saveData has the same values as the default one
        validateSaveFile(self.saveData, self.defaultData)

        -- Provide any backwards compatibility with previous releases
        validateBackwardsCompatibility(self.saveData, self.defaultData)

    else
 --         print('Savefile: load: loading defaults..')  -- DEBUG_TAG
        self.saveData = self.defaultData
    end

 --     print('Savefile: load: saveData is', Tserial.pack(self.saveData))  -- DEBUG_TAG
end

function Savefile:save()
    self.saveData.version = Version
    local serialisedData = Tserial.pack(self.saveData)
 --     print('Savefile: load: saveData is', serialisedData)  -- DEBUG_TAG

    local success = love.filesystem.write(SYNC_SAVEFILE_PATH, serialisedData)
 --     print('Savefile: save: operation success = ', success)  -- DEBUG_TAG

    -- delete the old savefile from the old location
    if success then
        love.filesystem.remove(SAVEFILE_NAME)
    end
end

function Savefile:getData()
    return self.saveData
end

function Savefile:getDefaultData()
    return self.defaultData
end

-- Private ------------------------------------------------------------------------------

function containsKey(table, _key)
    for k, _ in pairs(table) do
        if k == _key then
            return true
        end
    end
    return false
end

function validateSaveFile(data, default)
    for k, value in pairs(default) do
        if type(value) == 'table' then
            if not containsKey(data, k) then
                data[k] = {}
            end
            validateSaveFile(data[k], default[k])

        elseif not containsKey(data, k) then
            data[k] = value
        end
    end
end

-- Backwards Compatibility --------------------------------------------------------------

function validateBackwardsCompatibility(data, default)
    validatePlayerPosition(data, default)
end

function validatePlayerPosition(data, default)
    local TILE_S = Utils.tileSize()

    -- player backwards compatibility from first release: tilePos to pixelPos
    if data.player.x and data.player.y and
       (data.player.x / TILE_S ~= math.floor(data.player.x / TILE_S) or
        data.player.y / TILE_S ~= math.floor(data.player.y / TILE_S)) then

        -- resetting the player pos will fallback to spawnPoint pos
        data.player.x = default.player.x
        data.player.y = default.player.y
    end
end


return Savefile
