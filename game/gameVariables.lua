--[[
dialogueArgument.lua

Copyright (C) 2016-2019 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2


]]--


local Utils = require 'system.utils'


local GameVariables = {}
GameVariables.__index = GameVariables

-- constants
local DEFAULT_VARIABLES = {
    -- PONG
    ['MAKE_PONG_APP_LEVEL'] = 0,
    ['MAKE_PONG_LEVELS_PROGRESSED'] = 0,
    ['MAKE_PONG_APP_SHARES'] = 0,
    ['MAKE_PONG_APP_SHARES_DIFF'] = 0,

    -- SNAKE
    ['MAKE_SNAKE_APP_LEVEL'] = 0,
    ['MAKE_SNAKE_LEVELS_PROGRESSED'] = 0,
    ['MAKE_SNAKE_APP_SHARES'] = 0,
    ['MAKE_SNAKE_APP_SHARES_DIFF'] = 0,

    -- MINECRAFT
    ['MAKE_MINECRAFT_ORIGIN_APP_LEVEL'] = 0,
    ['MAKE_MINECRAFT_ORIGIN_LEVELS_PROGRESSED'] = 0,
    ['MAKE_MINECRAFT_FORTRESS_APP_LEVEL'] = 0,
    ['MAKE_MINECRAFT_FORTRESS_LEVELS_PROGRESSED'] = 0,
    ['MAKE_MINECRAFT_SPACE_APP_LEVEL'] = 0,
    ['MAKE_MINECRAFT_SPACE_LEVELS_PROGRESSED'] = 0,
    ['MAKE_MINECRAFT_OVERALL_APP_LEVEL'] = 0,
    ['MAKE_MINECRAFT_APP_SHARES'] = 0,
    ['MAKE_MINECRAFT_APP_SHARES_DIFF'] = 0,

    -- TERMINAL QUEST
    ['TERMINAL_QUEST_APP_LEVEL'] = 0,
    ['TERMINAL_QUEST_LEVELS_PROGRESSED'] = 0,

    -- MAKE ART
    ['MAKE_ART_BASIC_APP_LEVEL'] = 0,
    ['MAKE_ART_BASIC_LEVELS_PROGRESSED'] = 0,
    ['MAKE_ART_MEDIUM_APP_LEVEL'] = 0,
    ['MAKE_ART_MEDIUM_LEVELS_PROGRESSED'] = 0,
    ['MAKE_ART_SUMMER_APP_LEVEL'] = 0,
    ['MAKE_ART_SUMMER_LEVELS_PROGRESSED'] = 0,
    ['MAKE_ART_MISCHIEF_APP_LEVEL'] = 0,
    ['MAKE_ART_MISCHIEF_LEVELS_PROGRESSED'] = 0,
    ['MAKE_ART_PIXEL_APP_LEVEL'] = 0,
    ['MAKE_ART_PIXEL_LEVELS_PROGRESSED'] = 0,
    ['MAKE_ART_APP_SHARES'] = 0,
    ['MAKE_ART_APP_SHARES_DIFF'] = 0,

    -- FLAPPY
    ['FLAPPY_JUDOKA_BEST_SCORE'] = 0,
    ['FLAPPY_JUDOKA_SCORE_PROGRESSED'] = 0,

    -- SYSTEM
    ['USERNAME'] = '',
    ['KANO_WORLD_LOGGED_IN'] = false,
    ['IS_INTERNET'] = false,
    ['UPDATES_AVAILABLE'] = false,

    -- MAP
    ['MAPS_DISCOVERED'] = 0,
}


function GameVariables.create(gameStates)
 --     print('CREATING GameVariables')  -- DEBUG_TAG

    local self = setmetatable({}, GameVariables)

    self.gameStates = gameStates
    self.variables = DEFAULT_VARIABLES

    return self
end

function GameVariables:load()
    local profile = self.gameStates:getProfile()

    -- PONG
    self.variables['MAKE_PONG_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_PONG)
    self.variables['MAKE_PONG_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_PONG)
    self.variables['MAKE_PONG_APP_SHARES'] =
        profile:getCurrentShares(profile.MAKE_PONG)
    self.variables['MAKE_PONG_APP_SHARES_DIFF'] =
        profile:getSharesDifference(profile.MAKE_PONG)

    -- SNAKE
    self.variables['MAKE_SNAKE_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_SNAKE)
    self.variables['MAKE_SNAKE_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_SNAKE)
    self.variables['MAKE_SNAKE_APP_SHARES'] =
        profile:getCurrentShares(profile.MAKE_SNAKE)
    self.variables['MAKE_SNAKE_APP_SHARES_DIFF'] =
        profile:getSharesDifference(profile.MAKE_SNAKE)

    -- MINECRAFT
    self.variables['MAKE_MINECRAFT_ORIGIN_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MINECRAFT_ORIGIN)
    self.variables['MAKE_MINECRAFT_ORIGIN_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MINECRAFT_ORIGIN)
    self.variables['MAKE_MINECRAFT_FORTRESS_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MINECRAFT_FORTRESS)
    self.variables['MAKE_MINECRAFT_FORTRESS_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MINECRAFT_FORTRESS)
    self.variables['MAKE_MINECRAFT_SPACE_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MINECRAFT_SPACE)
    self.variables['MAKE_MINECRAFT_SPACE_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MINECRAFT_SPACE)
    self.variables['MAKE_MINECRAFT_OVERALL_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MINECRAFT_OVERALL)
    self.variables['MAKE_MINECRAFT_APP_SHARES'] =
        profile:getCurrentShares(profile.MINECRAFT_ORIGIN)
    self.variables['MAKE_MINECRAFT_APP_SHARES_DIFF'] =
        profile:getSharesDifference(profile.MINECRAFT_ORIGIN)

    -- TERMINAL QUEST
    self.variables['TERMINAL_QUEST_APP_LEVEL'] =
        profile:getCurrentLevel(profile.TQUEST)
    self.variables['TERMINAL_QUEST_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.TQUEST)
    self.variables['TERMINAL_QUEST_APP_SHARES'] =
        profile:getCurrentShares(profile.TQUEST)
    self.variables['TERMINAL_QUEST_APP_SHARES_DIFF'] =
        profile:getSharesDifference(profile.TQUEST)

    -- MAKE ART
    self.variables['MAKE_ART_BASIC_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_ART_BASIC)
    self.variables['MAKE_ART_BASIC_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_ART_BASIC)
    self.variables['MAKE_ART_MEDIUM_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_ART_MEDIUM)
    self.variables['MAKE_ART_MEDIUM_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_ART_MEDIUM)
    self.variables['MAKE_ART_SUMMER_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_ART_SUMMER)
    self.variables['MAKE_ART_SUMMER_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_ART_SUMMER)
    self.variables['MAKE_ART_MISCHIEF_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_ART_MISCHIEF)
    self.variables['MAKE_ART_MISCHIEF_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_ART_MISCHIEF)
    self.variables['MAKE_ART_PIXEL_APP_LEVEL'] =
        profile:getCurrentLevel(profile.MAKE_ART_PIXEL)
    self.variables['MAKE_ART_PIXEL_LEVELS_PROGRESSED'] =
        profile:getLevelDifference(profile.MAKE_ART_PIXEL)
    self.variables['MAKE_ART_APP_SHARES'] =
        profile:getCurrentShares(profile.MAKE_ART_BASIC)
    self.variables['MAKE_ART_APP_SHARES_DIFF'] =
        profile:getSharesDifference(profile.MAKE_ART_BASIC)

    -- FLAPPY JUDOKA
    self.variables['FLAPPY_JUDOKA_BEST_SCORE'] =
        profile:getCurrentLevel(profile.FLAPPY_JUDOKA)
    self.variables['FLAPPY_JUDOKA_SCORE_PROGRESSED'] =
        profile:getLevelDifference(profile.FLAPPY_JUDOKA)

    -- SYSTEM
    self.variables['USERNAME'] = Utils.firstToUpper(profile:getUsername())
    self.variables['KANO_WORLD_LOGGED_IN'] = profile:isLoggedIn()
    self.variables['IS_INTERNET'] = Utils.isInternet()
    self.variables['UPDATES_AVAILABLE'] = Utils.isUpdatesAvailable()
end

-- Public -------------------------------------------------------------------------------

function GameVariables:getFromTable(variables)
    local values = {}
    for _, argument in ipairs(variables) do
        table.insert(values, self:get(argument))
    end
    return values
end

function GameVariables:get(argument)
    return self.variables[argument]
end

function GameVariables:getVariables()
    return self.variables
end

function GameVariables:set(argument, value, check)
    check = check or true

    self.variables[argument] = value

    -- check if trigger is linked to active quest or codex
    if check then
        self.gameStates:checkQuestEvent(true, argument)
        self.gameStates:checkCodexEvent(true, argument)
        self.gameStates:checkEvolutionEvent(argument)
    end
end


return GameVariables
