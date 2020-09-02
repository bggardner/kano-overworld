--[[
minecraftAlexQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the dialogue you can have with Alex in the Minecraft map.
]]--


return {
    type = "quest",

    dialogues = {
        --- 1) Welcome dialogue ---------------------------------------------------------
        {
            type = "copy",
            copy = {
                "minecraftAlex1"
            },
            arguments = {},
            options = {},
        },

        --- 2) Play Minecraft up to challenge 2 ---------------------------------------
        {
            type = "copy",
            copy = {
                "minecraftAlex2"
            },
            arguments = {},
            options = {},
        },

        --- 3) Talk to Alex ------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "minecraftAlex3"
            },
            arguments = {},
            options = {},
        },

        -- TODO add dialogue for post played minecraft a certain amount --
    }
}
