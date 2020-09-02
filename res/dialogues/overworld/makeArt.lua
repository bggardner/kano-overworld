--[[
makeArt.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Pong in Overworld on the Beach.
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue - first speech-----------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtTerminal1"
            },
            arguments = {},
            options = {
                { makeArt = "CMD_MAKE_ART" },
                { maybeLater = 2 }
            },
        },

        --- 2) Refuse to play Make Art -----------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtTerminal2"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
