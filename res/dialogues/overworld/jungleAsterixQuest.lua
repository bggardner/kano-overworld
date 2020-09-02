--[[
jungleAsterixQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Mr Info in Overworld on the Beach.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue  ---------------------------------
        {
            type = "copy",
            copy = {
                "jungleAsterix1"
            },
            arguments = {},
            options = {},
        },

        --- 2) Encourage to find X about Terminal ---------------------------------
        {
            type = "copy",
            copy = {
                "jungleAsterix2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Congrats you did it ------------------------------------
        {
            type = "copy",
            copy = {
                "jungleAsterix3"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
