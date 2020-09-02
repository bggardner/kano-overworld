--[[
TermsitionTerminal.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "termsitionTerminal1"
            },
            arguments = {},
            options = {
                { letsGo = "GAME_EVENT_MOVE_TO_OVERWORLD" } ,
            },
        },
    }
}
