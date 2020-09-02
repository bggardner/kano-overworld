--[[
jungleTilde.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Info in Overworld on the Beach.
]]--


return {
    type = "decision",

    dialogues = {
        --- 1) Welcome dialogue - explore Port Ether ---------------------------------
        {
            type = "copy",
            copy = {
                "jungleTildeDiag1"
            },
            arguments = {"MAKE_SNAKE_APP_LEVEL"},
            options = {
                { ok = 2 },
            },
            properties = {},
        },

        --- 2) Decision node  ---------------------------------------------------------
        {
            type = "compare",
            operator = "lessOrEquals",
            a = "MAKE_SNAKE_APP_LEVEL",
            b = 4,
            positive = 3,
            negative = 4,
            properties = {
                save = true,
            }
        },

        --- 3) Level 4 or below --------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleTildeDiag2"
            },
            arguments = {},
            options = {},
            properties = {},
        },

        --- 4) Above level 4 ------------------------------------
        {
            type = "copy",
            copy = {
                "jungleTildeDiag3"
            },
            arguments = {"MAKE_SNAKE_APP_LEVEL"},
            options = {},
            properties = {},
        },

        --- the end ---
    }
}
