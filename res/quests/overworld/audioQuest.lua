--[[
audioQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "audioQuest_1",
    title = "audioQuestTitle",
    cRule = -1,
    complete = "audioQuestComplete",
    unlocks = {},
    -- dialogue
    dialogue = "audioQuest.lua",
    -- rules
    rules = {
        {
            condition = "audioQuest",
            help = "audioQuestHelp",
            ruleType = "dialogue",
        },
        {
            condition = "discoRunner2",
            help = "audioQuestHelp2",
            ruleType = "dialogue",
        },
        {
            condition = { a = "CMD_MAKE_MUSIC", b = 0, cond = "greaterThan" },
            help = "audioQuestHelp3",
            ruleType = "event",
        },
        {
            condition = "audioQuest4",
            help = "audioQuestHelp4",
            ruleType = "dialogue",
        },
    }
}
