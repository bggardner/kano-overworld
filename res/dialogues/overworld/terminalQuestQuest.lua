--[[
terminalQuestQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue for the Terminal Quest quest.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "carolineTerminalQuest1"
            },
            arguments = {},
            options = {},
        },

        --- 2) Map Option -- Here's the map -------------------------------------------------
        {
            type = "copy",
            copy = {
                "carolineTerminalQuest2"
            },
            arguments = {},
            options = {},
        },
        {
            type = "copy",
            copy = {
                "carolineTerminalQuest3"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
