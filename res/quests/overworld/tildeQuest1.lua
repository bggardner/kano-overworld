--[[
tildeQuest1.lua (Quest)

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Mr Info in Overworld on the Beach.
]]--


return {

    id = "tildeQuest_1",
    title = "jungleTildeQuestTitle",
    cRule = -1,
    complete = "jungleTildeQuestComplete",
    unlocks = {},
    -- dialogue
    dialogue = "jungleTildeQuest.lua",
    -- rules
    rules = {
        --- Talk to Tilde ----
        {
            condition = "jungleTildeQuest1a",
            help = "jungleTildeHelp1a",
            ruleType = "dialogue",
        },
        --- Complete the Terminal Quiz ----
        {
            condition = "jungleWildAntlerBoy6",
            help = "jungleTildeHelp1b",
            ruleType = "dialogue",
        },
        --- Talk to Tilde ----
        {
            condition = "jungleTildeQuest1c",
            help = "jungleTildeHelp1c",
            ruleType = "dialogue",
        },

    }
}
