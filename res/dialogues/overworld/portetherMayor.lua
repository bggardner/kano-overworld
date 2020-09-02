--[[
portetherMayor.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the regular dialogue that you can have with the Mayor.
]]--


return {
    type = "decision",

    dialogues = {
        --- 1) Welcome dialogue - explore Port Ether ---------------------------------
        {
            type = "copy",
            copy = {
                "portetherMayorDiag"
            },
            arguments = {},
            options = {},
            properties = {},
        },

        --- 2) Decision node - If TQ is less than 2 then hint to keep playing TQ ------
        {
            type = "compare",
            operator = "lessThan",
            a = "TERMINAL_QUEST_APP_LEVEL",
            b = 8,
            positive = 3,
            negative = 4,
            properties = {
                save = true,
            }
        },

        --- 3) Hint to go play TQ ----------------------------------------------
        {
            type = "copy",
            copy = {
                "portetherMayorDiag2"
            },
            arguments = {},
            options = {},
            properties = {},
        },

        --- 4) Decision node - If TQ is complete or not ---------
        {
            type = "compare",
            operator = "lessThan",
            a = "TERMINAL_QUEST_APP_LEVEL",
            b = 31,
            positive = 5,
            negative = 6,
            properties = {
                save = true,
            }
        },

        --- 5) Hint to Complete TQ ------------------------------------
        {
            type = "copy",
            copy = {
                "portetherMayorDiag3"
            },
            arguments = {},
            options = {},
            properties = {},
        },

        --- 6) Hint that there's still more to learn (update!) --------------------
        {
            type = "copy",
            copy = {
                "portetherMayorDiag4"
            },
            arguments = {},
            options = {},
            properties = {},
        },
        --- the end ---
    }
}
