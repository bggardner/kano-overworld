--[[
hdmiQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "hdmiQuest_1",
    title = "hdmiQuestTitle",
    cRule = -1,
    complete = "hdmiQuestComplete",
    unlocks = {'audioQuest_1'},
    -- dialogue
    dialogue = "hdmiQuest.lua",
    -- rules
    rules = {
        {
            condition = "hdmiQuest",
            help = "hdmiQuestHelp",
            ruleType = "dialogue",
        },
        {
            condition = "hdmiInterviewFinal",
            help = "hdmiQuestHelp2",
            ruleType = "dialogue",
        },
        {
            condition = "hdmiQuest3",
            help = "hdmiQuestHelp3",
            ruleType = "dialogue",
        },
    }
}
