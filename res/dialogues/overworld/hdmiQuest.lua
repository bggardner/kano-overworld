--[[
hdmiQuest.lua

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
                "hdmiQuest"
            },
            arguments = {},
            options = {},
        },

        --- 2) Probe to talk to reporter ------------------------
        {
            type = "copy",
            copy = {
                "hdmiQuest2"
            },
            arguments = {},
            options = {},
        },
        --- 3) Talk to confirm quest over ------------------------
        {
            type = "copy",
            copy = {
                "hdmiQuest3"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
