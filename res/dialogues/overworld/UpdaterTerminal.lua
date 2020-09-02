--[[
UpdaterTerminal.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

The dialogue with an UpdaterTerminal map object in Tiled. It gives the player the
choice to connect to the internet and install the laters Kano OS updates.
]]--


return {
    type = "decision",

    dialogues = {
        --- 1) Decision node - IS_INTERNET ----------------------------------------------
        {
            type = "compare",
            operator = "equals",
            a = "IS_INTERNET",
            b = true,
            positive = 3,
            negative = 2,
            properties = {}
        },

        --- 2) No Internet - Open kano-settings -----------------------------------------
        {
            type = "copy",
            copy = {
                "tempNoInternetCopy"
            },
            arguments = {},
            options = {
                { tempLaunchWifiConfig = 'CMD_KANO_SETTINGS_INTERNET' },
                { mehTemp = 0 }
            },
            properties = {},
        },

        --- 3) Decision node - UPDATES_AVAILABLE ----------------------------------------
        {
            type = "compare",
            operator = "equals",
            a = "UPDATES_AVAILABLE",
            b = true,
            positive = 5,
            negative = 4,
            properties = {}
        },

        --- 4) No Updates - ask to come back later --------------------------------------
        {
            type = "copy",
            copy = {
                "tempNoUpdatesCopy"
            },
            arguments = {},
            options = {
                { ok = 0 }
            },
            properties = {},
        },

        --- 5) Updates Available - Open kano-updater ------------------------------------
        {
            type = "copy",
            copy = {
                "tempUpdatesAvailableCopy"
            },
            arguments = {},
            options = {
                { tempLaunchUpdater = 'CMD_KANO_UPDATER' },
                { mehTemp = 0 }
            },
            properties = {},
        },
        --- the end ---
    }
}
