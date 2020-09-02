--[[
pongQuest.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Quest to complete Pong
]]--

return {

    id = "pongQuest_1",
    title = "pongQuestTitle",
    cRule = 1,
    complete = "pongQuestComplete",
    unlocks = {"makeArtQuest_1","asterixQuest_1"},
    -- dialogue
    dialogue = "gregoryPong.lua",
    -- rules
    rules = {
        {
            condition = "pongQuest1",
            help = "pongQuestHelp1",
            ruleType = "dialogue",
        },
        {
            condition = { a = "MAKE_PONG_APP_LEVEL", b = 2, cond = "greaterOrEquals" },
            help = "pongQuestHelp2",
            ruleType = "event",
        },
        {
            condition = "pongQuest3",
            help = "pongQuestHelp3",
            ruleType = "dialogue",
        },
    }
}
