--[[
portetherMayorQuest1.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the Quest file for the Mayor.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue - explore Port Ether ---------------------------------
        {
            type = "copy",
            copy = {
                "portetherMayor"
            },
            arguments = {},
            options = {},
        },

        --- 2) Description of where to go in Port Ether ---------------------------------
        {
            type = "copy",
            copy = {
                "portetherMayor1"
            },
            arguments = {},
            options = {},
        },

        --- 3) Congrats found house --------------------------------------------
        {
            type = "copy",
            copy = {
                "portetherQuest1b"
            },
            arguments = {},
            options = {},
        },

        --- 4) Go find Vector Village house ------------------------------------
        {
            type = "copy",
            copy = {
                "portetherMayor2"
            },
            arguments = {},
            options = {},
        },
        --- 5) Congrats found Vector Village house -------------------------------
        {
            type = "copy",
            copy = {
                "portetherQuest1d"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
