--[[
makeArtQuest2.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Quest to get you through Make Art
]]--


return {

    id = "makeArtQuest_2",
    title = "makeArtQuestTitle2",
    cRule = -1,
    complete = "makeArtQuestComplete2",
    unlocks = {},
    -- dialogue
    dialogue = "chiefPixelHackerQuest.lua",
    -- rules
    rules = {
        {
            condition = "chiefPixelHackerQuest1",
            help = "chiefPixelHackerHelp1",
            ruleType = "dialogue",
        },
        -- Beat the Make Art Quiz ---
        {
            condition = "makeArtQuizEnd",
            help = "chiefPixelHackerHelp2",
            ruleType = "dialogue",
        },
        {
            condition = "chiefPixelHackerQuest3",
            help = "chiefPixelHackerHelp3",
            ruleType = "dialogue",
        },
        --- Complete Basic ----
        {
            condition = { a = "MAKE_ART_BASIC_APP_LEVEL", b = 7, cond = "greaterOrEquals" },
            help = "chiefPixelHackerHelp4",
            ruleType = "event",
        },
        {
            condition = "chiefPixelHackerQuest5",
            help = "chiefPixelHackerHelp5",
            ruleType = "dialogue",
        },
        -- Complete Medium ----
        {
            condition = { a = "MAKE_ART_MEDIUM_APP_LEVEL", b = 9, cond = "greaterOrEquals" },
            help = "chiefPixelHackerHelp6",
            ruleType = "event",
        },
        {
            condition = "chiefPixelHackerQuest7",
            help = "chiefPixelHackerHelp7",
            ruleType = "dialogue",
        },
    }
}
