--[[
LogicLake-Master.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Master of the House
]]--


return {
    type = "repeat",

    dialogues = {
        {
            type = "copy",
            copy = {
                "llMaster"
            },
            arguments = {},
            options = {
            	{ logic = 2},
                { bye = 3 }
            },
        },

        {
            type = "copy",
            copy = {
                "llMaster2"
            },
            arguments = {},
            options = {},
        },

        {
            type = "copy",
            copy = {
                "llMaster3"
            },
            arguments = {},
            options = {},
        },
    }
}
