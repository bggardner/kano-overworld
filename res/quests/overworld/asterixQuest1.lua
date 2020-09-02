--[[
asterixQuest1.lua (Quest)

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the quest from Asterix in Overworld on the Beach.
]]--

return {

    id = "asterixQuest_1",
    title = "jungleAsterixQuestTitle",
    cRule = -1,
    complete = "jungleAsterixQuestComplete",
    unlocks = {"minecraftQuest_1"},
    -- dialogue
    dialogue = "jungleAsterixQuest.lua",
    -- rules
    rules = {
        --- Talk to Asterix ----
        {
            condition = "jungleAsterix1",
            help = "jungleAsterixHelp1",
            ruleType = "dialogue",
        },
        --- Complete the Terminal research in the Mines --
        {
            condition = { a = "MAKE_SNAKE_APP_LEVEL", b = 2, cond = "greaterOrEquals" },
            help = "jungleAsterixHelp2",
            ruleType = "event",
        },
        --- Talk to Asterix ----
        {
            condition = "jungleAsterix3",
            help = "jungleAsterixHelp3",
            ruleType = "dialogue",
        },

    }
}
