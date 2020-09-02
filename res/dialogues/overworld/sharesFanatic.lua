--[[
sharesFanatic.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is a dialogue that revolves around shares.
]]--


return {
    type = "decision",

    dialogues = {
        --- 1) Welcome dialogue - I LOVE SHARING - HERE'S THE NUMBER -------
        {
            type = "copy",
            copy = {
                "momaSharesFanatic"
            },
            arguments = {},
            options = {
                { ok = 2 },
                },
            properties = {},
        },

        --- 2) Decision node  ---------------------------------------------------------
        {
            type = "compare",
            operator = "equals",
            a = "MAKE_ART_APP_SHARES",
            b = 0,
            positive = 3,
            negative = 4,
            properties = {
                save = true,
            }
        },

        --- 3) No shares!! ---------------------------------------------
        {
            type = "copy",
            copy = {
                "momaSharesFanatic2"
            },
            arguments = {},
            options = {
                { createArt = "CMD_MAKE_ART" },
                { maybeLater = 0 }
            },
            properties = {},
        },

        --- 4) Decision node ---------------------------------------------------------
        {
            type = "compare",
            operator = "lessThan",
            a = "MAKE_ART_APP_SHARES",
            b = 2,
            positive = 5,
            negative = 6,
            properties = {
                save = true,
            }
        },

        --- 5) You've made 1 share --------------------------------------------------
        {
            type = "copy",
            copy = {
                "momaSharesFanatic3"
            },
            arguments = {},
            options = {},
            properties = {},
        },

        --- 6) Decision node ---------------------------------------------------------
        {
            type = "compare",
            operator = "lessOrEquals",
            a = "MAKE_ART_APP_SHARES",
            b = 5,
            positive = 7,
            negative = 8,
            properties = {
                save = true,
            }
        },

        --- 7) Between 2-5 shares ------------------------------------------------
        {
            type = "copy",
            copy = {
                "momaSharesFanatic4"
            },
            arguments = {"MAKE_ART_APP_SHARES"},
            options = {},
            properties = {},
        },

        --- 8) Decision node ---------------------------------------------------------
        {
            type = "compare",
            operator = "lessOrEquals",
            a = "MAKE_ART_APP_SHARES",
            b = 10,
            positive = 9,
            negative = 10,
            properties = {
                save = true,
            }
        },

        --- 9) Between 5-10 shares answer ----------------------------------------
        {
            type = "copy",
            copy = {
                "momaSharesFanatic5"
            },
            arguments = {"MAKE_ART_APP_SHARES"},
            options = {},
            properties = {},
        },

        --- 10) More than 10 shares - AMAZING! ----------------------------------------
        {
            type = "copy",
            copy = {
                "momaSharesFanatic6"
            },
            arguments = {"MAKE_ART_APP_SHARES"},
            options = {},
            properties = {},
        },

        --- the end ---
    }
}
