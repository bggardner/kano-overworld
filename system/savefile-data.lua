--[[
savefile-data.lua

Copyright (C) 2016-2019 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This file gets saved in the SaveDirectory setup by LÖVE 2D.
-- Windows XP: C:\Documents and Settings\user\Application Data\LOVE\ or %appdata%\LOVE\
-- Windows Vista and 7: C:\Users\user\AppData\Roaming\LOVE or %appdata%\LOVE\
-- Linux: ~/.local/share/love/
-- Mac: /Users/user/Library/Application Support/LOVE/
]]--


return {
    gameManager = {
        worldId = 'overworld',
        mapId = 'beach.lua'
    },
    appLevels = {
        minecraft = 0,  -- origin challenge pack
        minecraft_fortress = 0,
        minecraft_space = 0,
        linux_story = 0,
        make_snake = 0,
        make_pong = 0,
        make_art_basic = 0,
        make_art_medium = 0,
        make_art_summer = 0,
        make_art_mischief = 0,
        make_art_pixel = 0,
        flappy_judoka = 0
    },
    appShares = {
        minecraft = 0,
        linux_story = 0,
        make_snake = 0,
        make_pong = 0,
        make_art = 0,
    },
    player = {
        x = nil,
        y = nil
    }
}
