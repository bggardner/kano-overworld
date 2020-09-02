--[[
terminalquest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Flappy in Overworld on the Logic Lake 01.
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue --------------------------------------------------------
        {
            type = "copy",
            copy = {
                "terminalquest1"
            },
            arguments = {},
            options = {
                { playterminalquest = "CMD_TERMINAL_QUEST" } ,
                { maybeLater = 2 }
            },
        },

        --- 2) Flappy Game -------------------------------------------------------------

        {
            type = "copy",
            copy = {
                "terminalquest2"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
