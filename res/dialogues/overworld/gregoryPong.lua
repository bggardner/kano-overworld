--[[
gregoryPong.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest you have with Gregory in Overworld on the Beach.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue ----------------
        {
            type = "copy",
            copy = {
                "pongQuest1"
            },
            arguments = {},
            options = {},
        },

        --- 2) Try playing then making ----------------

        {
            type = "copy",
            copy = {
                "pongQuest2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Talk to Gregory again ----------------
        {
            type = "copy",
            copy = {
                "pongQuest3"
            },
            arguments = {},
            options = {},
        },

        --- the end ---
    }
}
