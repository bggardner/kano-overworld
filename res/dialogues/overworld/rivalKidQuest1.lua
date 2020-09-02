--[[
rivalKidQuest1.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue -- ------------------------
        {
            type = "copy",
            copy = {
                "rivalKidQuest1"
            },
            arguments = {},
            options = {},
        },

        --- 2) Check for high score ------------------------
        {
            type = "copy",
            copy = {
                "rivalKidQuest2"
            },
            arguments = {},
            options = {},
        },
        --- 3) Talk to confirm quest over ------------------------
        {
            type = "copy",
            copy = {
                "rivalKidQuest3"
            },
            arguments = {},
            options = {},
        },

        --- 4) Talk to confirm quest over ------------------------
        {
            type = "copy",
            copy = {
                "rivalKidQuest4"
            },
            arguments = {},
            options = {},
        },

        --- 5) Talk to confirm quest over ------------------------
        {
            type = "copy",
            copy = {
                "rivalKidQuest5"
            },
            arguments = {},
            options = {},
        },

        --- the end ---
    }
}
