--[[
terminalQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Quest to beat level 2 of Minecraft
]]--

return {

    id = "terminalQuest_1",
    title = "terminalQuestTitle",
    cRule = -1,
    complete = "terminalQuestComplete",
    unlocks = {"portetherMayor_1"},
    -- dialogue
    dialogue = "terminalQuestQuest.lua",
    -- rules
    rules = {
        {
            condition = "carolineTerminalQuest1",
            help = "terminalQuestHelp1",
            ruleType = "dialogue",
        },
        {
            condition = { a = "TERMINAL_QUEST_APP_LEVEL", b = 8, cond = "greaterOrEquals" },
            help = "terminalQuestHelp2",
            ruleType = "event",
        },
        {
            condition = "carolineTerminalQuest3",
            help = "terminalQuestHelp3",
            ruleType = "dialogue",
        },
    }
}
