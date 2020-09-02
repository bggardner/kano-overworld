--[[
audioQuest.lua

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
                "audioQuest"
            },
            arguments = {},
            options = {},
        },

        --- 2) Push to talk to someone -- ------------------------
        {
            type = "copy",
            copy = {
                "audioQuest2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Probe to launch Make Music ------------------------
        {
            type = "copy",
            copy = {
                "audioQuest3"
            },
            arguments = {},
            options = {},
        },
        --- 4) Talk to confirm quest over ------------------------
        {
            type = "copy",
            copy = {
                "audioQuest4"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
