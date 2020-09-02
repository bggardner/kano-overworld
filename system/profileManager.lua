--[[
profileManager.lua

Copyright (C) 2016-2019 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Doc: https://github.com/KanoComputing/kano-overworld/wiki/Profile-Manager
]]--


local Utils = require 'system.utils'
local Locale = require 'system.locale'
local f = love.filesystem

local Profile = {}
Profile.__index = Profile

-- local function forward declaration
local loadUsername, getAppInfo, getMakeArtLevel, getLastPongScore, get_lua_data,
      extract_moma_data, getFlappyBestScore, getHackMinecraftLevel

-- constants
local MAKE_ART_GROUPS = {"basic", "medium", "summercamp", "mischiefweek2015", "pixelhack"}
local HACK_MINECRAFT_GROUPS = {"origin", "fortress", "space"}


function Profile.create()
 --     print("CREATING Profile Manager")  -- DEBUG_TAG

    local self = setmetatable({}, Profile)

    -- list of levels
    self.savedLevels = {}
    self.profileLevels = {}
    -- list of shares
    self.savedShares = {}
    self.profileShares = {}
    -- apps
    self.MINECRAFT_ORIGIN = 1
    self.MINECRAFT_FORTRESS = 2
    self.MINECRAFT_SPACE = 3
    self.MINECRAFT_OVERALL = 4
    self.TQUEST = 5
    self.MAKE_SNAKE = 6
    self.MAKE_PONG = 7
    self.MAKE_ART_BASIC = 8
    self.MAKE_ART_MEDIUM = 9
    self.MAKE_ART_SUMMER = 10
    self.MAKE_ART_MISCHIEF = 11
    self.MAKE_ART_PIXEL = 12
    self.PONG = 13
    self.FLAPPY_JUDOKA = 14

    -- moma shares
    self.momaValues = {}

    return self
end

function Profile:load()
 --     print("LOADING Profile Manager")  -- DEBUG_TAG
    local homedir = os.getenv("HOME")
    -- Load username
    self.username, self.loggedIn = loadUsername(homedir)
    -- Values stored in the Löve file ---
    -- 1 self.MINECRAFT
    self.savedLevels[self.MINECRAFT_ORIGIN] = g_resMngr:getSaveData().appLevels.minecraft
    self.savedLevels[self.MINECRAFT_FORTRESS] = g_resMngr:getSaveData().appLevels.minecraft_fortress
    self.savedLevels[self.MINECRAFT_SPACE] = g_resMngr:getSaveData().appLevels.minecraft_space
    self.savedShares[self.MINECRAFT_ORIGIN] = g_resMngr:getSaveData().appShares.minecraft
    -- 2 self.TQUEST
    self.savedLevels[self.TQUEST] = g_resMngr:getSaveData().appLevels.linux_story
    self.savedShares[self.TQUEST] = g_resMngr:getSaveData().appShares.linux_story
    -- 3 self.MAKE_SNAKE
    self.savedLevels[self.MAKE_SNAKE] = g_resMngr:getSaveData().appLevels.make_snake
    self.savedShares[self.MAKE_SNAKE] = g_resMngr:getSaveData().appShares.make_snake
    -- 4 self.MAKE_PONG
    self.savedLevels[self.MAKE_PONG] = g_resMngr:getSaveData().appLevels.make_pong
    self.savedShares[self.MAKE_PONG] = g_resMngr:getSaveData().appShares.make_pong
    -- 5-9 self.MAKE_ART_*
    self.savedLevels[self.MAKE_ART_BASIC] = g_resMngr:getSaveData().appLevels.make_art_basic
    self.savedShares[self.MAKE_ART_BASIC] = g_resMngr:getSaveData().appShares.make_art
    self.savedLevels[self.MAKE_ART_MEDIUM] = g_resMngr:getSaveData().appLevels.make_art_medium
    self.savedLevels[self.MAKE_ART_SUMMER] = g_resMngr:getSaveData().appLevels.make_art_summer
    self.savedLevels[self.MAKE_ART_MISCHIEF] = g_resMngr:getSaveData().appLevels.make_art_mischief
    self.savedLevels[self.MAKE_ART_PIXEL] = g_resMngr:getSaveData().appLevels.make_art_pixel
    -- 10 self.PONG Goals scored stored as {goalsfor = X, goalsagainst = Y}
    self.savedLevels[self.PONG] = getLastPongScore()
    -- 11 self.FLAPPY_JUDOKA
    self.savedLevels[self.FLAPPY_JUDOKA] = g_resMngr:getSaveData().appLevels.flappy_judoka

    -- Values stored in Kano Profile ---
    local level, shares, bestScore, _
    -- 1 self.MINECRAFT
    level = getHackMinecraftLevel(homedir, HACK_MINECRAFT_GROUPS[1])
    self.profileLevels[self.MINECRAFT_ORIGIN] = level
    level = getHackMinecraftLevel(homedir, HACK_MINECRAFT_GROUPS[2])
    self.profileLevels[self.MINECRAFT_FORTRESS] = level
    level = getHackMinecraftLevel(homedir, HACK_MINECRAFT_GROUPS[3])
    self.profileLevels[self.MINECRAFT_SPACE] = level
    self.profileLevels[self.MINECRAFT_OVERALL] =
        self.profileLevels[self.MINECRAFT_ORIGIN] +
        self.profileLevels[self.MINECRAFT_FORTRESS] +
        self.profileLevels[self.MINECRAFT_SPACE]
    self.profileShares[self.MINECRAFT_ORIGIN] = 0  -- TODO in HM first
    -- 2 self.TQUEST
    level, shares = getAppInfo(homedir, "linux-story")
    self.profileLevels[self.TQUEST] = level
    self.profileShares[self.TQUEST] = shares
    -- 3 self.MAKE_SNAKE
    level, shares = getAppInfo(homedir, "make-snake")
    self.profileLevels[self.MAKE_SNAKE] = level
    self.profileShares[self.MAKE_SNAKE] = shares
    -- 4 self.MAKE_PONG
    level, shares = getAppInfo(homedir, "make-pong")
    self.profileLevels[self.MAKE_PONG] = level
    self.profileShares[self.MAKE_PONG] = shares
    -- 5-9 self.MAKE_ART_*
    level = getMakeArtLevel(homedir, MAKE_ART_GROUPS[1])
    self.profileLevels[self.MAKE_ART_BASIC] = level
    -- Add shares for Make Art in index MAKE_ART_BASIC
    _, shares = getAppInfo(homedir, "kano-draw")
    self.profileShares[self.MAKE_ART_BASIC] = shares
    --
    level = getMakeArtLevel(homedir, MAKE_ART_GROUPS[2])
    self.profileLevels[self.MAKE_ART_MEDIUM] = level
    level = getMakeArtLevel(homedir, MAKE_ART_GROUPS[3])
    self.profileLevels[self.MAKE_ART_SUMMER] = level
    level = getMakeArtLevel(homedir, MAKE_ART_GROUPS[4])
    self.profileLevels[self.MAKE_ART_MISCHIEF] = level
    level = getMakeArtLevel(homedir, MAKE_ART_GROUPS[5])
    self.profileLevels[self.MAKE_ART_PIXEL] = level
    -- 11 self.FLAPPY_JUDOKA
    bestScore = getFlappyBestScore(homedir)
    self.profileLevels[self.FLAPPY_JUDOKA] = bestScore

    -- Make Art Shares: This data is from users so we need to be careful to be able to
    -- continue if it is broken in some way.
    local success, result = get_lua_data('res/moma.lua')
    if success then
        success = pcall(extract_moma_data,self.momaValues, result)
    end
    -- if the process failed, get some default values
    if not success then
 --         print("FALLBACK MOMA") -- DEBUG_TAG
        self.momaValues = f.load('res/moma_default.lua')()
    end
end

function Profile:getMomaValue(x)
    return self.momaValues[tostring(x)]
end

function Profile:save()
    -- Levels
    if self:hasProgressed(self.MINECRAFT_ORIGIN) then
        g_resMngr:getSaveData().appLevels.minecraft = self.profileLevels[self.MINECRAFT_ORIGIN]
    end
    if self:hasProgressed(self.MINECRAFT_FORTRESS) then
        g_resMngr:getSaveData().appLevels.minecraft_fortress = self.profileLevels[self.MINECRAFT_FORTRESS]
    end
    if self:hasProgressed(self.MINECRAFT_SPACE) then
        g_resMngr:getSaveData().appLevels.minecraft_space = self.profileLevels[self.MINECRAFT_SPACE]
    end
    if self:hasProgressed(self.TQUEST) then
        g_resMngr:getSaveData().appLevels.linux_story = self.profileLevels[self.TQUEST]
    end
    if self:hasProgressed(self.MAKE_SNAKE) then
        g_resMngr:getSaveData().appLevels.make_snake = self.profileLevels[self.MAKE_SNAKE]
    end
    if self:hasProgressed(self.MAKE_PONG) then
        g_resMngr:getSaveData().appLevels.make_pong = self.profileLevels[self.MAKE_PONG]
    end
    if self:hasProgressed(self.MAKE_ART_BASIC) then
        g_resMngr:getSaveData().appLevels.make_art_basic =
            self.profileLevels[self.MAKE_ART_BASIC]
    end
    if self:hasProgressed(self.MAKE_ART_MEDIUM) then
        g_resMngr:getSaveData().appLevels.make_art_medium =
            self.profileLevels[self.MAKE_ART_MEDIUM]
    end
    if self:hasProgressed(self.MAKE_ART_SUMMER) then
        g_resMngr:getSaveData().appLevels.make_art_summer =
            self.profileLevels[self.MAKE_ART_SUMMER]
    end
    if self:hasProgressed(self.MAKE_ART_MISCHIEF) then
        g_resMngr:getSaveData().appLevels.make_art_mischief =
            self.profileLevels[self.MAKE_ART_MISCHIEF]
    end
    if self:hasProgressed(self.MAKE_ART_PIXEL) then
        g_resMngr:getSaveData().appLevels.make_art_pixel =
            self.profileLevels[self.MAKE_ART_PIXEL]
    end
    if self:hasProgressed(self.FLAPPY_JUDOKA) then
        g_resMngr:getSaveData().appLevels.flappy_judoka =
            self.profileLevels[self.FLAPPY_JUDOKA]
    end
    -- Shares
    if self:hasShared(self.MINECRAFT_ORIGIN) then
        g_resMngr:getSaveData().appShares.minecraft = self.profileShares[self.MINECRAFT_ORIGIN]
    end
    if self:hasShared(self.TQUEST) then
        g_resMngr:getSaveData().appShares.linux_story = self.profileShares[self.TQUEST]
    end
    if self:hasShared(self.MAKE_SNAKE) then
        g_resMngr:getSaveData().appShares.make_snake = self.profileShares[self.MAKE_SNAKE]
    end
    if self:hasShared(self.MAKE_PONG) then
        g_resMngr:getSaveData().appShares.make_pong = self.profileShares[self.MAKE_PONG]
    end
    if self:hasShared(self.MAKE_ART_BASIC) then
        g_resMngr:getSaveData().appShares.make_art = self.profileShares[self.MAKE_ART_BASIC]
    end
end

-- Getters ------------------------------------------------------------------------------

function Profile:getUsername()
    return self.username
end

function Profile:isLoggedIn()
    return self.loggedIn
end

function Profile:hasProgressed(app)
    return self.profileLevels[app] > self.savedLevels[app]
end

function Profile:hasShared(app)
    return self.profileShares[app] > self.savedShares[app]
end

function Profile:getStoredLevel(app)
    return self.savedLevels[app]
end

function Profile:getCurrentLevel(app)
    return self.profileLevels[app]
end

function Profile:getLevelDifference(app)
    return self.profileLevels[app] - self.savedLevels[app]
end

function Profile:getCurrentShares(app)
    return self.profileShares[app]
end

function Profile:getSharesDifference(app)
    return self.profileShares[app] - self.savedShares[app]
end

-- Private ------------------------------------------------------------------------------

-- Returns username and if logged in to Kano World or not
function loadUsername(homedir)
    local username = Locale.text("you")
    local path = homedir .. '/.kanoprofile/profile/profile.json'

    if not Utils.fileExists(path) then
 --         print("ERROR: Kano profile file not found. Location: " .. path)  -- DEBUG_TAG
        return username, false
    end

    -- Kano World user name
    local cmd = "jq .kanoworld_username "..path
    local handle = io.popen(cmd)
    username = handle:read("*a")
    -- remove special characters (quotes)
    username = username:gsub('%W','')
    handle:close()
    if username ~= "null" then
        return username, true
    end
    -- Linux user name
    cmd = "jq .username_linux "..path
    handle = io.popen(cmd)
    username = handle:read("*a")
    -- remove special characters (quotes)
    username = username:gsub('%W','')
    handle:close()
    if username ~= "null" then
        return username, false
    end
    -- return default option
    return Locale.text("you"), false
end

function getAppInfo(homedir, app)
    -- Retrieve the level and shares per given app
    local path = homedir .. '/.kanoprofile/apps/' .. app .. '/state.json'
    -- If file doesn't exist it means that the level is 0
    if not Utils.fileExists(path) then
        return 0, 0
    end
    local cmd = "jq '[.level,.shared]' "..path
    local handle = io.popen(cmd)
    local res = {}
    local i = 1
    -- Iterate through the lines output by jq
    for var in handle:read("*a"):gmatch("([^\r\n]*)[\r\n]") do
        var = string.gsub(var, "%W", "") -- remove all none alpha characters
        if var ~= "" then
            res[i] = tonumber(var) or 0
            i = i + 1
        end
    end
    handle:close()
    -- returns level (res[1]) and number of shares (res[2])
    return res[1] or 0, res[2] or 0
end

-- Make Art state.json is very specific
function getMakeArtLevel(homedir, group)
    -- Retrieve the level and shares per given app
    local path = homedir .. '/.kanoprofile/apps/kano-draw/state.json'
    -- If file doesn't exist it means that the level is 0
    if not Utils.fileExists(path) then
        return 0
    end
    local cmd = "jq .groups." .. group ..".challengeNo "..path
    local handle = io.popen(cmd)
    local level = handle:read('*a')
    handle:close()
    return tonumber(level) or 0
end

function getHackMinecraftLevel(homedir, group)
    local path = homedir .. '/.kanoprofile/apps/hack-minecraft/state.json'
    -- If file doesn't exist it means that the level is 0
    if not Utils.fileExists(path) then
        return 0
    end
    local level = Utils.launchCmd(
        'jq ".progress.' .. group .. '.completed | length" ' .. path
    )
    return tonumber(level) or 0
end

function getFlappyBestScore(homedir)
    local bestScore = Utils.launchCmd(
        'jq .flappy_judoka_best_score ' ..
        homedir .. '/.kanoprofile/apps/love-minigames/state.json'
    )
    return tonumber(bestScore) or 0
end

function getLastPongScore()
    local pong_result = Utils.launchCmd(
        "/usr/bin/kano-profile-cli load_app_state_variable love-minigames pong_result"
    )
    local goalsfor, goalsagainst
    if pong_result then
        goalsfor, goalsagainst = pong_result:match("([^,]+),([^,]+)")
    else
        goalsfor, goalsagainst = 0, 0
    end
    goalsfor = tonumber(goalsfor) or 0
    goalsagainst = tonumber(goalsagainst) or 0
    return  {goalsfor = goalsfor, goalsagainst = goalsagainst}
end

function get_lua_data(filename)
    -- Get lua data as written by luon.py
    -- Loadfile returns a chunk which must be called,
    -- which returns a function which must be called
    -- again (supplying a value to use for json null)

    -- load the file
    local c = f.load(filename)
    if not c then
 --         print("FAILED TO LOAD "..filename) -- DEBUG_TAG
        return nil, false
    end

    -- Call the chunk
    local success, result = pcall(c)
--[[
    -- DEBUG_TAG_START
    if not success then
        print("FAILED TO call "..filename)
    end
    -- DEBUG_TAG_END
--]]

    -- call the function
    if success then
        success, result = pcall(result, nil)

--[[
        -- DEBUG_TAG_START
        if not success then
            print("FAILED TO call function "..filename)
        end
        -- DEBUG_TAG_END
--]]
    end
    return success, result
end

function extract_moma_data(valueTable, shares)
    for i = 1, 6 do
        local s = shares[i]
        if not s then
 --             print("error "..tostring(i)) -- DEBUG_TAG
            error(i)
        end
        valueTable[tostring(i)]  = {
            username = shares[i]['username'] or '',
            title = shares[i]['title'] or '',
            date = shares[i]['dateCreated'] or '',
            url = shares[i]['openUrl'] or ''
        }
    end
    return true
end


return Profile
