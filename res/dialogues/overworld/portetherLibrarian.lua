--[[
portetherLibrarian.lua

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
                "portetherLibrarian1"
            },
            arguments = {},
            options = {
                { how = 2 } ,
                { rabbit = 3 }
            },
        },

        --- 2) Option 1 -- Here's the map -------------------------------------------------
        {
            type = "copy",
            copy = {
                "portetherLibrarian2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Option 2 ------------------------------------
        {
            type = "copy",
            copy = {
                "portetherLibrarian3"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
