--[[
minimap.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is where the map details are saved for the mini-map
]]--

-- hotspot state
local STATE_VISITED = 1
local STATE_NOT_VISITED = 2
local STATE_UNDER_CONTRUCTION = 3
local STATE_DUPLICATE = 4

return
{
    -- Future
    {
    x = 97, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 169, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 241, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 313, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 385, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 457, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 529, y = 7, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 97, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 169, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 241, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 313, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 385, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 457, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 529, y = 47, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 97, y = 87, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 169, y = 87, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 241, y = 87, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 313, y = 87, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 385, y = 87, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 457, y = 87, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- mines03.lua
    {
    x = 529, y = 87, w = 72, h = 40, order = 5,
    map = 'mines03.lua', travel = true,
    name = 'minesArea', status = STATE_NOT_VISITED
    },

    -- Future
    {
    x = 97, y = 127, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 169, y = 127, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 241, y = 127, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 313, y = 127, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- jungle01.lua
    {
    x = 385, y = 127, w = 72, h = 40, order = 4,
    map = 'jungle01.lua', travel = true,
    name = 'jungleArea', status = STATE_NOT_VISITED
    },

    -- jungle02.lua
    {
    x = 457, y = 127, w = 72, h = 40, order = -1,
    map = 'jungle02.lua', travel = false,
    name = 'jungleArea', status = STATE_NOT_VISITED
    },

    -- mines01.lua
    {
    x = 529, y = 167, w = 72, h = 40, order = -1,
    map = 'mines01.lua', travel = false,
    name = 'minesArea', status = STATE_NOT_VISITED
    },

    -- Future
    {
    x = 97, y = 167, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- village02.lua
    {
    x = 169, y = 167, w = 72, h = 40, order = -1,
    map = 'village02.lua', travel = false,
    name = 'villageArea', status = STATE_NOT_VISITED
    },

    -- village01.lua
    {
    x = 241, y = 167, w = 72, h = 40, order = 3,
    map = 'village01.lua', travel = true,
    name = 'villageArea', status = STATE_NOT_VISITED
    },

    -- village_house01.lua (this is a duplicate of village01.lua)
    {
    x = 241, y = 167, w = 72, h = 40, order = -1,
    map = 'village_house01.lua', travel = false,
    name = 'villageArea', status = STATE_DUPLICATE
    },

    -- village_house02.lua (this is a duplicate of village01.lua)
    {
    x = 241, y = 167, w = 72, h = 40, order = -1,
    map = 'village_house02.lua', travel = false,
    name = 'villageArea', status = STATE_DUPLICATE
    },

    -- village_house03.lua (this is a duplicate of village01.lua)
    {
    x = 241, y = 167, w = 72, h = 40, order = -1,
    map = 'village_house03.lua', travel = false,
    name = 'villageArea', status = STATE_DUPLICATE
    },

    -- village_moma1.lua (this is a duplicate of village02.lua)
    {
    x = 169, y = 167, w = 72, h = 40, order = -1,
    map = 'village_moma1.lua', travel = false,
    name = 'villageArea', status = STATE_DUPLICATE
    },

    -- village_moma0.lua (this is a duplicate of village02.lua)
    {
    x = 169, y = 167, w = 72, h = 40, order = -1,
    map = 'village_moma0.lua', travel = false,
    name = 'villageArea', status = STATE_DUPLICATE
    },

    -- village_moma2.lua (this is a duplicate of village02.lua)
    {
    x = 169, y = 167, w = 72, h = 40, order = -1,
    map = 'village_moma2.lua', travel = false,
    name = 'villageArea', status = STATE_DUPLICATE
    },

    -- plains03.lua
    {
    x = 313, y = 167, w = 72, h = 40, order = -1,
    map = 'plains03.lua', travel = false,
    name = 'plainsArea', status = STATE_NOT_VISITED
    },

    -- plains04.lua
    {
    x = 385, y = 167, w = 72, h = 40, order = -1,
    map = 'plains04.lua', travel = false,
    name = 'plainsArea', status = STATE_NOT_VISITED
    },

    -- jungle03.lua
    {
    x = 457, y = 167, w = 72, h = 40, order = -1,
    map = 'jungle03.lua', travel = false,
    name = 'jungleArea', status = STATE_NOT_VISITED
    },

    -- mines02.lua
    {
    x = 529, y = 127, w = 72, h = 40, order = -1,
    map = 'mines02.lua', travel = false,
    name = 'minesArea', status = STATE_NOT_VISITED
    },

    -- cove01.lua
    {
    x = 97, y = 207, w = 72, h = 40, order = -1,
    map = 'cove01.lua', travel = false,
    name = 'coveArea', status = STATE_NOT_VISITED
    },

    -- logiclake02.lua
    {
    x = 169, y = 207, w = 72, h = 40, order = -1,
    map = 'logiclake02.lua', travel = false,
    name = 'lakeArea', status = STATE_NOT_VISITED
    },

    -- logiclake03.lua
    {
    x = 241, y = 207, w = 72, h = 40, order = -1,
    map = 'logiclake03.lua', travel = false,
    name = 'lakeArea', status = STATE_NOT_VISITED
    },

    -- logiclake_farmhouse.lua (this is a duplicate of logiclake03.lua)
    {
    x = 241, y = 207, w = 72, h = 40, order = -1,
    map = 'logiclake_farmhouse.lua', travel = false,
    name = 'lakeArea', status = STATE_DUPLICATE
    },

    -- logiclake_farmhouse_upstairs.lua (this is a duplicate of logiclake03.lua)
    {
    x = 241, y = 207, w = 72, h = 40, order = -1,
    map = 'logiclake_farmhouse_upstairs.lua', travel = false,
    name = 'lakeArea', status = STATE_DUPLICATE
    },

    -- plains02.lua
    {
    x = 313, y = 207, w = 72, h = 40, order = -1,
    map = 'plains02.lua', travel = false,
    name = 'plainsArea', status = STATE_NOT_VISITED
    },

    -- camcaverns01.lua
    {
    x = 385, y = 207, w = 72, h = 40, order = -1,
    map = 'camcaverns01.lua', travel = false,
    name = 'plainsArea', status = STATE_NOT_VISITED
    },

    -- Future
    {
    x = 457, y = 207, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- Future
    {
    x = 529, y = 207, w = 72, h = 40, order = -1,
    map = '-1', travel = false,
    name = 'Future', status = STATE_UNDER_CONTRUCTION
    },

    -- cove01b.lua
    {
    x = 97, y = 247, w = 72, h = 40, order = -1,
    map = 'cove01b.lua', travel = false,
    name = 'coveArea', status = STATE_NOT_VISITED
    },

    -- beach.lua
    {
    x = 25, y = 207, w = 72, h = 40, order = 1,
    map = 'beach.lua', travel = true,
    name = 'beachArea', status = STATE_NOT_VISITED
    },

    -- logiclake01.lua
    {
    x = 169, y = 247, w = 72, h = 40, order = 2,
    map = 'logiclake01.lua', travel = true,
    name = 'lakeArea', status = STATE_NOT_VISITED
    },

    -- logiclake04.lua
    {
    x = 241, y = 247, w = 72, h = 40, order = -1,
    map = 'logiclake04.lua', travel = false,
    name = 'lakeArea', status = STATE_NOT_VISITED
    },

    -- plains01.lua
    {
    x = 313, y = 247, w = 72, h = 40, order = -1,
    map = 'plains01.lua', travel = false,
    name = 'plainsArea', status = STATE_NOT_VISITED
    },

    -- portether01.lua
    {
    x = 385, y = 247, w = 72, h = 40, order = -1,
    map = 'portether01.lua', travel = false,
    name = 'etherstationArea', status = STATE_NOT_VISITED
    },

    -- portether04.lua
    {
    x = 457, y = 247, w = 72, h = 40, order = -1,
    map = 'portether04.lua', travel = false,
    name = 'etherstationArea', status = STATE_NOT_VISITED
    },

    -- etherstation.lua
    {
    x = 529, y = 247, w = 72, h = 40, order = 6,
    map = 'etherstation.lua', travel = true,
    name = 'etherstationArea', status = STATE_NOT_VISITED
    },

    -- cove02.lua
    {
    x = 97, y = 287, w = 72, h = 40, order = -1,
    map = 'cove02.lua', travel = false,
    name = 'coveArea', status = STATE_NOT_VISITED
    },

    ----- TEMP UNTIL NEW MINI-MAP IMAGE ------
    -- cove01b.lua (this is a duplicate of cove02.lua)
    {
    x = 97, y = 287, w = 72, h = 40, order = -1,
    map = 'cove01b.lua', travel = false,
    name = 'coveArea', status = STATE_DUPLICATE
    },

    -- cove_lighthouse01.lua (this is a duplicate of cove02.lua)
    {
    x = 97, y = 287, w = 72, h = 40, order = -1,
    map = 'cove_lighthouse01.lua', travel = false,
    name = 'coveArea', status = STATE_DUPLICATE
    },

    -- cove_lighthouse02.lua (this is a duplicate of cove02.lua)
    {
    x = 97, y = 287, w = 72, h = 40, order = -1,
    map = 'cove_lighthouse02.lua', travel = false,
    name = 'coveArea', status = STATE_DUPLICATE
    },

    -- cove_lighthouse03.lua (this is a duplicate of cove02.lua)
    {
    x = 97, y = 287, w = 72, h = 40, order = -1,
    map = 'cove_lighthouse03.lua', travel = false,
    name = 'coveArea', status = STATE_DUPLICATE
    },

    -- cove_lighthouse04.lua (this is a duplicate of cove02.lua)
    {
    x = 97, y = 287, w = 72, h = 40, order = -1,
    map = 'cove_lighthouse04.lua', travel = false,
    name = 'coveArea', status = STATE_DUPLICATE
    },

    -- cove03.lua
    {
    x = 169, y = 287, w = 72, h = 40, order = -1,
    map = 'cove03.lua', travel = false,
    name = 'coveArea', status = STATE_NOT_VISITED
    },

    -- hdmi02.lua
    {
    x = 241, y = 287, w = 72, h = 40, order = -1,
    map = 'hdmi02.lua', travel = false,
    name = 'hdmiArea', status = STATE_NOT_VISITED
    },

    -- hdmi01.lua
    {
    x = 313, y = 287, w = 72, h = 40, order = -1,
    map = 'hdmi01.lua', travel = false,
    name = 'hdmiArea', status = STATE_NOT_VISITED
    },

    -- portether02.lua
    {
    x = 385, y = 287, w = 72, h = 40, order = -1,
    map = 'portether02.lua', travel = false,
    name = 'etherstationArea', status = STATE_NOT_VISITED
    },

    -- portether02_corruptedhouse.lua (this is a duplicate of portether02.lua)
    {
    x = 385, y = 287, w = 72, h = 40, order = -1,
    map = 'portether02_corruptedhouse.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether02_audio.lua (this is a duplicate of portether02.lua)
    {
    x = 385, y = 287, w = 72, h = 40, order = -1,
    map = 'portether02_audio.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether03.lua
    {
    x = 457, y = 287, w = 72, h = 40, order = -1,
    map = 'portether03.lua', travel = false,
    name = 'etherstationArea', status = STATE_NOT_VISITED
    },

    -- portether03_house.lua  (this is a duplicate of portether03.lua)
    {
    x = 457, y = 287, w = 72, h = 40, order = -1,
    map = 'portether03_house.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether04_townhall.lua (this is a duplicate of portether04.lua)
    {
    x = 457, y = 247, w = 72, h = 40, order = -1,
    map = 'portether04_townhall.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether04_dance.lua (this is a duplicate of portether04.lua)
    {
    x = 457, y = 247, w = 72, h = 40, order = -1,
    map = 'portether04_dance.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether04_mayor.lua (this is a duplicate of portether04.lua)
    {
    x = 457, y = 247, w = 72, h = 40, order = -1,
    map = 'portether04_mayor.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether04_cafe.lua (this is a duplicate of portether04.lua)
    {
    x = 457, y = 247, w = 72, h = 40, order = -1,
    map = 'portether04_cafe.lua', travel = false,
    name = 'etherstationArea', status = STATE_DUPLICATE
    },

    -- portether05.lua
    {
    x = 529, y = 287, w = 72, h = 40, order = -1,
    map = 'portether05.lua', travel = false,
    name = 'etherstationArea', status = STATE_NOT_VISITED
    },

}
