--[[
powerQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "powerQuest_1",
    title = "powerQuestTitle",
    cRule = 1,
    complete = "powerQuestComplete",
    unlocks = {'hdmiQuest_1'},
    -- dialogue
    dialogue = "powerQuest.lua",
    -- rules
    rules = {
        {
            condition = "powerQuest",
            help = "powerQuestHelp",
            ruleType = "dialogue",
        },
        {
            condition = "powerLED",
            help = "powerQuestHelp2",
            ruleType = "dialogue",
        },
        {
            condition = "powerQuest3",
            help = "powerQuestHelp3",
            ruleType = "dialogue",
        },
    }
}
