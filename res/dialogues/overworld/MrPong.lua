--[[
MrPong.lua

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
                "mrPongDiag1"
            },
            arguments = {},
            options = {
                { playPong = "CMD_PONG" },
                { makePong = "CMD_MAKE_PONG"},
                { maybeLater = 0 }
            },
        },
        --- the end ---
    }
}
