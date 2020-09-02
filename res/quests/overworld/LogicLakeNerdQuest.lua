--[[
LogicLakeNerdQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "LogicLake-Nerd_1",
    title = "LogicLakeNerdQuestTitle",
    cRule = -1,
    complete = "LogicLakeNerdQuestComplete",
    unlocks = {"rivalKid_1"},
    -- dialogue
    dialogue = "LogicLake-NerdQuest.lua",
    -- rules
    rules = {
        {
            condition = "llNerd",
            help = "LogicLakeNerdHelp1",
            ruleType = "dialogue",
        },
        {
            condition = "LogicLakeNerdQuest1",
            help = "LogicLakeNerdHelp2",
            ruleType = "dialogue",
        },
        {
            condition = "llNerd3",
            help = "LogicLakeNerdHelp3",
            ruleType = "dialogue",
        },
        {
            condition = "LogicLakeNerdQuest2",
            help = "LogicLakeNerdHelp4",
            ruleType = "dialogue",
        },
        {
            condition = "llNerd5",
            help = "LogicLakeNerdHelp5",
            ruleType = "dialogue",
        },
    }
}
