--[[
beachSunburntGirl.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

description of file
]]--

return {
    type = "state",
    dialogues = {
        --- 1) Welcome dialogue ---------------------------------------------------------
        {
            type = "copy",
            copy = {
                "sunburntDiag0"
            },
            arguments = {},
            options = {
                { blank = 2 }
            },
            properties = {},
        },

        --- 2) Map Option -- Here's the map ---------------------------------------------
        {
            type = "copy",
            copy = {
                "sunburntDiag"
            },
            arguments = {},
            options = {},
            properties = {
                save = true,
            },
        },
        --- the end ---
    }
}
