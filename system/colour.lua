--[[
colour.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--

local love = love
local g = love.graphics

local Colour =
{
    BLACK = {r = 0, g = 0, b = 0},
    BLACK_OFF = {r = 17, g = 17, b = 17},

    GREY = {r = 137, g = 137, b = 137},
    GREY_LIGHT = {r = 215, g = 215, b = 215},
    GREY_LIGHT2 = {r = 180, g = 180, b = 180},
    GREY_DARK = {r = 70, g = 70, b = 70},
    GREY_DARK2 = {r = 51, g = 51, b = 51},

    BROWN = {r = 116, g = 76, b = 40},
    BROWN_PALE = {r = 139, g = 98, b = 60},
    BROWN_LIGHT = {r = 197, g = 156, b = 113},
    BROWN_DARK = {r = 95, g = 56, b = 23},

    ORANGE = {r = 253, g = 140, b = 60},
    ORANGE_KANO = {r = 255, g = 126, b = 0},
    ORANGE_PALE = {r = 253, g = 180, b = 126},
    ORANGE_DARK = {r = 85, g = 34, b = 8},

    GREEN = {r = 97, g = 200, b = 93},
    GREEN_LIGHT = {r = 198, g = 255, b = 196},
    GREEN_BRIGHT = {r = 29, g = 197, b = 35},
    GREEN_DARK = {r = 66, g = 135, b = 63},
    GREEN_FOREST = {r = 0, g = 167, b = 83},
    GREEN_FOREST_DARK = {r = 1, g = 95, b = 47},

    RED = {r = 255, g = 3, b = 2},
    RED_PALE = {r = 255, g = 182, b = 182},
    RED_DARK = {r = 152, g = 14, b = 11},

    BLUE_SEA = {r = 0, g = 161, b = 220},
    BLUE_SEA_DARK = {r = 1, g = 71, b = 65},

    LAVENDER = {r = 150, g = 111, b = 209},
    LAVENDER_DARK = {r = 74, g = 45, b = 120},

    WHITE = {r = 255, g = 255, b = 255},
}

function Colour.set(colour, alpha)
    g.setColor(colour.r, colour.g, colour.b, alpha or 255)
end

function Colour.reset()
    g.setColor(Colour.WHITE.r, Colour.WHITE.g, Colour.WHITE.b, 255)
end

return Colour
