--[[
makeMinecraft.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue to launch Make Minecraft.
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeMinecraft"
            },
            arguments = {},
            options = {
                { minecraft = "CMD_MAKE_MINECRAFT" } ,
                { maybeLater = 0 }
            },
        },
    }
}
