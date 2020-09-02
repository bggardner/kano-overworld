--[[
Caroline.lua

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
                "caroline1"
            },
            arguments = {"TERMINAL_QUEST_APP_LEVEL"},
            options = {},
        },
        },
        --- the end ---
    }
