--[[
Gregory.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest you have with Gregory in Overworld on the Beach.
]]--


return {
    type = "decision",

    dialogues = {
        --- 1) Welcome dialogue ----------------
        {
            type = "copy",
            copy = {
                "gregory1"
            },
            arguments = {},
            options = {},
            properties = {},

        },

        --- 2) Decision node  ---------------------------------------------------------
        {
            type = "compare",
            operator = "lessThan",
            a = "MAKE_PONG_APP_LEVEL",
            b = 3,
            positive = 3,
            negative = 4,
            properties = {
                save = true,
            }
        },


        --- 3) Less than level 10 ----------------

        {
            type = "copy",
            copy = {
                "gregory2"
            },
            arguments = {},
            options = {},
            properties = {},
        },

        --- 4) level 10 or more ---
        {
            type = "copy",
            copy = {
                "gregory3"
            },
            arguments = {"MAKE_PONG_APP_LEVEL"},
            options = {},
            properties = {},
        },

        --- the end ---
    }
}
