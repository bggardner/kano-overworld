--[[
LogicLake-NerdQuest.lua (Dialogue)

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with the curious student in Overworld in Logic Lake.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue --------------------------------------------------------
        {
            type = "copy",
            copy = {
                "llNerd"
            },
            arguments = {},
            options = {},
        },

        --- 2) When you do second step -------------------------------------------------
        {
            type = "copy",
            copy = {
                "llNerd2"
            },
            arguments = {},
            options = {},
        },

        --- 3) When you do third step --------------------------------------------------
        {
            type = "copy",
            copy = {
                "llNerd3"
            },
            arguments = {},
            options = {},
        },

        --- 4) When you do fourth step --------------------------------------------------
        {
            type = "copy",
            copy = {
                "llNerd4"
            },
            arguments = {},
            options = {},
        },

        --- 5) When you finish the quest ------------------------------------------------
        {
            type = "copy",
            copy = {
                "llNerd5"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
