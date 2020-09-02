--[[
pixelHackerQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Pong in Overworld on the Beach.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue - first speech--------------------------------------
        {
            type = "copy",
            copy = {
                "pixelHacker1"
            },
            arguments = {},
            options = {},
        },
        --- 2) Quest - level 2 make art basic -------------
        {
            type = "copy",
            copy = {
                "pixelHacker2"
            },
            arguments = {},
            options = {},
        },
        -- 3) Talk to Chief Again -------
        {
            type = "copy",
            copy = {
                "pixelHacker3"
            },
            arguments = {},
            options = {},
        },
    }
}
