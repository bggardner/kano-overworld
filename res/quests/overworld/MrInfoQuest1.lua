--[[
MrInfoQuest1.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "mrInfo_1",
    title = "mrInfoQuestTitle",
    cRule = 1,
    complete = "mrInfoQuestComplete",
    unlocks = {"LogicLake-Nerd_1"},
    -- dialogue
    dialogue = "MrInfoQuest1.lua",
    -- rules
    rules = {
        {
            condition = { a = "GAME_EVENT_MINIMAP", b = 0, cond = "greaterThan" },
            help = "mrInfoQuestHelp1",
            ruleType = "event",
        },
        {
            condition = "mrInfoQuest2",
            help = "mrInfoQuestHelp2",
            ruleType = "dialogue",
        },
        {
            condition = { a = "MAPS_DISCOVERED", b = 50, cond = "greaterThan" },
            help = "mrInfoQuestHelp3",
            ruleType = "event",
        },
        {
            condition = "mrInfoQuest4",
            help = "mrInfoQuestHelp4",
            ruleType = "dialogue",
        },
    }
}
