--[[
sharesQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Dialogue you have with Shares Fanatic for Quest in MoMa
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue ---------------------------------
        {
            type = "copy",
            copy = {
                "sharesQuest1"
            },
            arguments = {},
            options = {},
        },

        --- 2) Description of X ---------------------------------
        {
            type = "copy",
            copy = {
                "sharesQuest2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Congrats found X --------------------------------------------
        {
            type = "copy",
            copy = {
                "sharesQuest3"
            },
            arguments = {},
            options = {},
        },

        --- 4) Go find Y ------------------------------------
        {
            type = "copy",
            copy = {
                "sharesQuest4"
            },
            arguments = {},
            options = {},
        },
        --- 5) Congrats found Y -------------------------------
        {
            type = "copy",
            copy = {
                "sharesQuest5"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
