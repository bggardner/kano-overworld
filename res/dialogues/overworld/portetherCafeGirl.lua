--[[
portetherCafeGirl.lua

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
                "portetherCafeGirl"
            },
            arguments = {},
            options = {
            	{ Yes = 2},
                { mehTemp = 3 }
            },
        },

        {
            type = "copy",
            copy = {
                "portetherCafeGirl2"
            },
            arguments = {},
            options = {},
        },

        {
            type = "copy",
            copy = {
                "portetherCafeGirl3"
            },
            arguments = {},
            options = {},
        },
    }
}
