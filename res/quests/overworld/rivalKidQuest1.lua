--[[
rivalKidQuest1.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


return {

    id = "rivalKid_1",
    title = "rivalKidQuestTitle",
    cRule = -1,
    complete = "rivalKidQuestComplete",
    unlocks = {},
    -- dialogue
    dialogue = "rivalKidQuest1.lua",
    -- rules
    rules = {
        {
            condition = "rivalKidQuest1",
            help = "rivalKidHelp1",
            ruleType = "dialogue",
        },
        {
            condition = { a = "FLAPPY_JUDOKA_BEST_SCORE", b = 20, cond = "greaterOrEquals" },
            help = "rivalKidHelp2",
            ruleType = "event",
        },
        {
            condition = "rivalKidQuest3",
            help = "rivalKidHelp3",
            ruleType = "dialogue",
        },
        {
            condition = { a = "FLAPPY_JUDOKA_BEST_SCORE", b = 30, cond = "greaterOrEquals" },
            help = "rivalKidHelp4",
            ruleType = "event",
        },
        {
            condition = "rivalKidQuest5",
            help = "rivalKidHelp5",
            ruleType = "dialogue",
        },

    }
}
