--[[
jungleTildeQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Info in Overworld on the Beach.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue - explore Port Ether ---------------------------------
        {
            type = "copy",
            copy = {
                "jungleTildeQuest1a"
            },
            arguments = {},
            options = {},
        },

        --- 2) Congrats found house --------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleTilde2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Go find Vector Village house ------------------------------------
        {
            type = "copy",
            copy = {
                "jungleTildeQuest1c"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
