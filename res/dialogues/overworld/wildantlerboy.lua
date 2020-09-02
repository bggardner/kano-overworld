--[[
wildantlerboy.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue ------------------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleWildAntlerBoy"
            },
            arguments = {},
            options = {
                { jungleQuizOption1a = 3 },
                { jungleQuizOption1b = 2 }
            },
        },
        --- 2) Mocks the user -----------------------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleWildAntlerBoy2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Mocks the user -----------------------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleWildAntlerBoy3"
            },
            arguments = {},
            options = {
                { jungleQuizOption2a = 4 },
                { jungleQuizOption2b = 2 }
            },
        },

        --- 4) Mocks the user -----------------------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleWildAntlerBoy4"
            },
            arguments = {},
            options = {
                { jungleQuizOption3a = 2 },
                { jungleQuizOption3b = 5 }
            },
        },

        --- 5) One more  -----------------------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleWildAntlerBoy5"
            },
            arguments = {},
            options = {
                { jungleQuizOption4a = 2 },
                { jungleQuizOption4b = 6 }
            },
        },

        --- 6) Final Answer ------------------------------------------------
        {
            type = "copy",
            copy = {
                "jungleWildAntlerBoy6"
            },
            arguments = {},
            options = {},
        },


    }
}
