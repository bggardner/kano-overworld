--[[
MrInfoQuest1.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Info in Overworld on the Beach.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Help to check the map ---------------------
        {
            type = "copy",
            copy = {
                "mrInfoQuest1"
            },
            arguments = {'USERNAME'},
            options = {
                { checkMap = "GAME_EVENT_MINIMAP" } ,
            },
        },

        --- 2) World Explanation------------------------

                {
            type = "copy",
            copy = {
                "mrInfoQuest2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Explore Areas explanation -----------------------

                {
            type = "copy",
            copy = {
                "mrInfoQuest3"
            },
            arguments = {},
            options = {},
        },

        --- 4) Congratulations you explored lots of areas ------------------------

                {
            type = "copy",
            copy = {
                "mrInfoQuest4"
            },
            arguments = {},
            options = {},
        },

        --- the end ---
    }
}
