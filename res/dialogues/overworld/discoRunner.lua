--[[
discoRunner.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest you have with Gregory in Overworld on the Beach.
]]--

return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue - first speech---------------------------------------
        {
            type = "copy",
            copy = {
                "discoRunner"
            },
            arguments = {},
            options = {
                { cSoundWaveTitle = 2 },
                { bye = 0 }
            },
        },

        --- 3) Answer Question -------------------------------------
        {
            type = "copy",
            copy = {
                "discoRunner2"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
