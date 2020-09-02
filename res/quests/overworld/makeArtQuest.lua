--[[
makeArtQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Quest to get you through Make Art
]]--


return {

    id = "makeArtQuest_1",
    title = "makeArtQuestTitle",
    cRule = -1,
    complete = "makeArtQuestComplete",
    unlocks = {"minecraftQuest_1","makeArtQuest_2"},
    -- dialogue
    dialogue = "pixelHackerQuest.lua",
    -- rules
    rules = {
        {
            condition = "pixelHacker1",
            help = "makeArtQuestHelp1",
            ruleType = "dialogue",
        },
        {
            condition = { a = "MAKE_ART_BASIC_APP_LEVEL", b = 4, cond = "greaterOrEquals" },
            help = "makeArtQuestHelp2",
            ruleType = "event",
        },
        {
            condition = "pixelHacker3",
            help = "makeArtQuestHelp3",
            ruleType = "dialogue",
        },
    }
}
