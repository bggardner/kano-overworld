--[[
audioJack.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Info in Overworld on the Beach.
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "audioJack"
            },
            arguments = {},
            options =   {{ portetherMayorName = 2 },
                         { cSoundWaveTitle = 3 }
        },
        },

        --- 2) Mayor -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "audioJack2"
            },
            arguments = {},
            options =   {},
        },

        --- 3) Codex -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "audioJack3"
            },
            arguments = {},
            options =   {},
        },
        --- the end ---
    }
}
