--[[
minecraftQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Quest to beat level 2 of Minecraft
]]--

return {

    id = "minecraftQuest_1",
    title = "minecraftQuestTitle",
    cRule = -1,
    complete = "minecraftQuestComplete",
    unlocks = {"terminalQuest_1"},
    -- dialogue
    dialogue = "minecraftAlexQuest.lua",
    -- rules
    rules = {
        {
            condition = "minecraftAlex1",
            help = "minecraftQuestHelp1",
            ruleType = "dialogue",
        },
        {
            condition = { a = "MAKE_MINECRAFT_OVERALL_APP_LEVEL", b = 5, cond = "greaterOrEquals" },
            help = "minecraftQuestHelp2",
            ruleType = "event",
        },
        {
            condition = "minecraftAlex3",
            help = "minecraftQuestHelp3",
            ruleType = "dialogue",
        },
    }
}
