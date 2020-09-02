--[[
codex.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This specifies all the Codex elements in the game and how to obtain them.
]]--


return {

    --- Binary (unlocked by default)
    {
        id = 'cBinary',
        name = 'cBinaryTitle',
        description = 'cBinary',
        rule = {
            condition = { a = "MAKE_SNAKE_APP_LEVEL", b = 0, cond = "greaterOrEquals" },
            help = 'temp',
            ruleType = 'event',
        },
    },


    --- Power Item ---
    {
        id = 'cPower',
        name = 'cPowerTitle',
        description = 'cPower',
        rule = {
            condition = 'powerPerson3',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },


    --- Energy Item ---
    {
        id = 'cEnergy',
        name = 'cEnergyTitle',
        description = 'cEnergy',
        rule = {
            condition = 'powerPerson1',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- LED Item ---
    {
        id = 'cLED',
        name = 'cLEDTitle',
        description = 'cLED',
        rule = {
            condition = 'powerLED',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Voltage --- (unlocked next to Power Port)
    {
        id = 'cVoltage',
        name = 'cVoltageTitle',
        description = 'cVoltage',
        rule = {
            condition = 'powerVoltage',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Current --- (unlocked in capactor)
    {
        id = 'cCurrent',
        name = 'cCurrentTitle',
        description = 'cCurrent',
        rule = {
            condition = 'powerCurrent',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Pixels (unlocked in HDMI area, talk to guy)
    {
        id = 'cPixels',
        name = 'cPixelsTitle',
        description = 'cPixels',
        rule = {
            condition = 'House01Girl',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- HDMI (unlock by examining part of HDMI cable)
    {
        id = 'cHDMI',
        name = 'cHDMITitle',
        description = 'cHDMI',
        rule = {
            condition = 'HDMIgirl',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Resolution (unlock by examining a screen) --TEMP
    {
        id = 'cResolution',
        name = 'cResolutionTitle',
        description = 'cResolution',
        rule = {
            condition = 'HDmaster',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Speaker (unlock by examining a screen)
    {
        id = 'cSpeaker',
        name = 'cSpeakerTitle',
        description = 'cSpeaker',
        rule = {
            condition = 'audioJack',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Sound Waves (unlock by talking to Jack in Audio Quest)
    {
        id = 'cSoundWaves',
        name = 'cSoundWaveTitle',
        description = 'cSoundWave',
        rule = {
            condition = 'discoRunner2',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Mono
    {
        id = 'cMono',
        name = 'cMonoTitle',
        description = 'cMono',
        rule = {
            condition = 'portetherTourist',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Stereo
    {
        id = 'cStereo',
        name = 'cStereoTitle',
        description = 'cStereo',
        rule = {
            condition = 'portetherBuilder3',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Frequency
    {
        id = 'cFrequency',
        name = 'cFrequencyTitle',
        description = 'cFrequency',
        rule = {
            condition = 'discoGirl',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Vector
    {
        id = 'cVector',
        name = 'cVectorTitle',
        description = 'cVector',
        rule = {
            condition = 'villageSummercampGirl2',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Terminal (Unlocks when you beat Tilde Quest)
    {
        id = 'cTerminal',
        name = 'cTerminalTitle',
        description = 'cTerminal',
        rule = {
            condition = { a = "tildeQuest_1", b = 0, cond = "equals" },
            help = 'temp',
            ruleType = 'event',
        },
    },

    --- Code (unlock by talking to X) -- WIP
    -- {
    --     id = 'cCode',
    --     name = 'cCodeTitle',
    --     description = 'cCode',
    --     rule = {
    --         condition = 'llNerd',
    --         help = 'temp',
    --         ruleType = 'dialogue',
    --     },
    -- },

    --- SD Card Item --- TEMP
    -- {
    --     id = 'cSDCard',
    --     name = 'cSDCardTitle',
    --     description = 'cSDCard',
    --     rule = {
    --         condition = 'mrInfoQuest4',
    --         help = 'temp',
    --         ruleType = 'dialogue',
    --     },
    -- },

    --- OS Item --- TEMP
    -- {
    --     id = 'cOS',
    --     name = 'cOSTitle',
    --     description = 'cOS',
    --     rule = {
    --         condition = 'llMaster',
    --         help = 'temp',
    --         ruleType = 'dialogue',
    --     },
    -- },

    --- If Statement Item ---
   {
        id = 'cIfStatement',
        name = 'cIfStatementTitle',
        description = 'cIfStatement',
        rule = {
            condition = { a = "MAKE_PONG_APP_LEVEL", b = 2, cond = "greaterOrEquals" },
            help = 'temp',
            ruleType = 'event',
        },
    },

    --- Coordinates (Mines)
    {
        id = 'cCoordinates',
        name = 'cCoordinatesTitle',
        description = 'cCoordinates',
        rule = {
            condition = { a = "minecraftQuest_1", b = 0, cond = "equals" },
            help = 'temp',
            ruleType = 'event',
        },
    },

    --- Logic Gate Item ---
    {
        id = 'cLogicGate',
        name = 'cLogicGateTitle',
        description = 'cLogicGate',
        rule = {
            condition = 'llComputer',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- Input ---
    -- {
    --     id = 'cInput',
    --     name = 'cInputTitle',
    --     description = 'cInput',
    --     rule = {
    --         condition = 'temp',
    --         help = 'temp',
    --         ruleType = 'dialogue',
    --     },
    -- },

    --- Output ---
    -- {
    --     id = 'cOutput',
    --     name = 'cOutputTitle',
    --     description = 'cOutput',
    --     rule = {
    --         condition = 'temp',
    --         help = 'temp',
    --         ruleType = 'dialogue',
    --     },
    -- },

    --- Python Item ---
   {
        id = 'cPython',
        name = 'cPythonTitle',
        description = 'cPython',
        rule = {
            condition = 'portetherCafeGirl2',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

    --- CoffeeScript Item ---
   {
        id = 'cCoffeeScript',
        name = 'cCoffeeScriptTitle',
        description = 'cCoffeeScript',
        rule = {
            condition = 'momaProgrammer',
            help = 'temp',
            ruleType = 'dialogue',
        },
    },

}
