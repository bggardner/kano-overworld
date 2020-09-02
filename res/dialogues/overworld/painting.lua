--[[
painting.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue For paintings in moma
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue --------------------------------------------------------
        {
            type = "copy",
            copy = {
                "painting1"
            },
            arguments = {},
            options = {
                { launchShareTemp = "CMD_LAUNCH_SHARE" } ,
                { maybeLater = 0 }
            },
        },

        --- the end ---
    }
}
