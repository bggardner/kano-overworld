--[[
newsInterview.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterviewWelcome"
            },
            arguments = {},
            options = {
                { interested = 2 },
                { mehTemp = 0 }
            },
        },

        --- 2) Question 1 ------------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview1"
            },
            arguments = {'USERNAME'},
            options = {
                { hdmiInterview1a = 3 },
                { hdmiInterview1b = 4 }
            },
        },

        --- 3) Response 1a, then Q2 -----------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview2"
            },
            arguments = {},
            options = {
                { hdmiInterview2a = 5 },
                { hdmiInterview2b = 6 }
            },
        },

        --- 4) Response 1b, then Q2 ------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview21"
            },
            arguments = {},
            options = {
                { hdmiInterview2a = 5 },
                { hdmiInterview2b = 6 }
            },
        },

        --- 5) Response 2a, then then Q3 ------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview31"
            },
            arguments = {},
            options = {
                { hdmiInterview3a = 7 },
                { hdmiInterview3b = 8 }
            },
        },

        --- 6) Response 2b, then Q3 ------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview31"
            },
            arguments = {},
            options = {
                { hdmiInterview3a = 7 },
                { hdmiInterview3b = 8 }
            },
        },

        --- 7) Response 3a, then onto final ------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview4"
            },
            arguments = {},
            options = {
                { ok = 9 },
            },
        },

        --- 8) Response 3b, then onto final ------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterview41"
            },
            arguments = {},
            options = {
                { ok = 9 },
            },
        },

        --- 9) Woohoo you did it! ----------------------------------------------------
        {
            type = "copy",
            copy = {
                "hdmiInterviewFinal"
            },
            arguments = {'USERNAME'},
            options = {},
        },
        --- the end ---
    }
}
