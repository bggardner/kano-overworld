--[[
portetherMayorQuest1.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "portetherMayor_1",
    title = "portetherMayorQuestTitle",
    cRule = -1,
    complete = "portetherMayorQuestComplete",
    unlocks = {"tildeQuest_1"},
    -- dialogue
    dialogue = "portetherMayorQuest1.lua",
    -- rules
    rules = {
        {
            condition = "portetherMayor",
            help = "portetherHelp",
            ruleType = "dialogue",
        },
        {
            condition = "portetherQuest1a",
            help = "portetherHelp1a",
            ruleType = "dialogue",
        },
        {
            condition = "portetherQuest1b",
            help = "portetherHelp1b",
            ruleType = "dialogue",
        },
        {
            condition = "portetherQuest1c",
            help = "portetherHelp1c",
            ruleType = "dialogue",
        },
        {
            condition = "portetherQuest1d",
            help = "portetherHelp1d",
            ruleType = "dialogue",
        },
    }
}
