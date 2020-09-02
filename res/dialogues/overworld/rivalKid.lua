--[[
rivalKid.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--

return {
    type = "decision",

    dialogues = {
        --- 1) Welcome dialogue -----------------------
        {
            type = "copy",
            copy = {
                "rivalKidDiag"
            },
            arguments = {},
            options = {
                { ok = 2 },
            },
            properties = {},
        },
        --- 2) Decision node - If Flappy is under 10 or not ------
        {
            type = "compare",
            operator = "lessThan",
            a = "FLAPPY_JUDOKA_BEST_SCORE",
            b = 10,
            positive = 3,
            negative = 4,
            properties = {
                save = true,
            }
        },
        --- 3) If Flappy score is less than 10 --------------------------------------
        {
            type = "copy",
            copy = {
                "rivalKidDiag2"
            },
            arguments = {"FLAPPY_JUDOKA_BEST_SCORE"},
            options = {},
            properties = {},
        },
        --- 4) Decision node - If Flappy is under 10 or not ------
        {
            type = "compare",
            operator = "lessThan",
            a = "FLAPPY_JUDOKA_BEST_SCORE",
            b = 30,
            positive = 5,
            negative = 6,
            properties = {
                save = true,
            }
        },
        --- 5) If Flappy score is between 10 and 30 ----------------------------
        {
            type = "copy",
            copy = {
                "rivalKidDiag3"
            },
            arguments = {"FLAPPY_JUDOKA_BEST_SCORE"},
            options = {},
            properties = {},
        },
        --- 6) If Flappy score is more than 30-------------------------------------
        {
            type = "copy",
            copy = {
                "rivalKidDiag4"
            },
            arguments = {"FLAPPY_JUDOKA_BEST_SCORE"},
            options = {},
            properties = {},
        },
    }
}
