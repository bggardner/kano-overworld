--[[
discoSlo.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Disco Slo in the Audio Jack.
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "discoSlo"
            },
            arguments = {},
            options = {
                { sine = 2 },
                { triangle = 3 },
                { square = 4 },
                { noise = 5 }
            },
        },

        --- 2 ------------------------------------
        {
            type = "copy",
            copy = {
                "discoSloSine"
            },
            arguments = {},
            options = {},
        },

        --- 3 ------------------------------------
        {
            type = "copy",
            copy = {
                "discoSloTriangle"
            },
            arguments = {},
            options = {},
        },
        
        --- 4 ------------------------------------
        {
            type = "copy",
            copy = {
                "discoSloSquare"
            },
            arguments = {},
            options = {},
        },
        
        --- 5 ------------------------------------
        {
            type = "copy",
            copy = {
                "discoSloNoise"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
