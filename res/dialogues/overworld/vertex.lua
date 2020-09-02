--[[
vertex.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Dialogue you have with Pixel Hacker in MoMa
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue - explore Port Ether ---------------------------------
        {
            type = "copy",
            copy = {
                "vertex1"
            },
            arguments = {"MAKE_ART_MEDIUM_APP_LEVEL"},
            options = {},
        },
        --- the end ---
    }
}
