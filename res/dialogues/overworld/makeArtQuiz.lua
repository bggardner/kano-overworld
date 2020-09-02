--[[
makeArtQuiz.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2
]]--


return {
    type = "repeat",

    dialogues = {
        --- 1) Welcome dialogue -------------------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtQuizWelcome"
            },
            arguments = {},
            options = {
                { interested = 3 },
                { mehTemp = 0 }
            },
        },

        --- 2) Incorrect Answer Response ----------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtQuizIncorrect"
            },
            arguments = {},
            options = {},
        },

        --- 3) Question 1 ------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtQuiz1"
            },
            arguments = {},
            options = {
                { makeArtQuiz1a = 2 },
                { makeArtQuiz1b = 4 }
            },
        },

        --- 4) the user -----------------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtQuiz2"
            },
            arguments = {},
            options = {
                { makeArtQuiz2a = 5 },
                { makeArtQuiz2b = 2 }
            },
        },

        --- 5)  the user -----------------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtQuiz3"
            },
            arguments = {},
            options = {
                { makeArtQuiz3a = 6 },
                { makeArtQuiz3b = 2 }
            },
        },

        --- 6) Woohoo you did it! ----------------------------------------------------
        {
            type = "copy",
            copy = {
                "makeArtQuizEnd"
            },
            arguments = {},
            options = {},
        },
        --- the end ---
    }
}
