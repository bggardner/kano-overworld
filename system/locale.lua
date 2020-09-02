--[[
locale.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Localisation manager
]]--


local Utils = require 'system.utils'


local love = love
local f = love.filesystem


local Locale = {}

-- upvalues
local currentLocale = ''
local defaultLang = {}
local localisedLang = {}

-- constants
local LANG_FILE_RECIPE_PATH = 'res/locales/%s/%s'
local DEFAULT_LOCALE = 'en_US'
local LANG_FILENAME = 'lang.lua'


function Locale.load()
    local locale = Utils.stringSplit(os.getenv('LANG') or '', '.')[1]

    local filepath = string.format(LANG_FILE_RECIPE_PATH, locale, LANG_FILENAME)
    if f.getInfo(filepath) then
        localisedLang = f.load(filepath)()
        currentLocale = locale
    end

    filepath = string.format(LANG_FILE_RECIPE_PATH, DEFAULT_LOCALE, LANG_FILENAME)
    if f.getInfo(filepath) then
        defaultLang = f.load(filepath)()
    end
end

function Locale.text(key)
    local function returnIfValue(s)
        if s ~= nil and s ~= "" then
            return s
        end
        return nil
    end

    return returnIfValue(localisedLang[key]) or returnIfValue(defaultLang[key]) or ""
end

function Locale.textWithArg(key, ...)
    -- replace flags $1, $2, etc with corresponding arguments
    local text = localisedLang[key] or defaultLang[key] or ""
    local n = select('#', ...)  -- number of arguments
    for i = 1, n do
        local a = select(i, ...)
        text = string.gsub(text, "$" .. i, a)
    end
    return text
end

function Locale.getLang()
    if currentLocale == DEFAULT_LOCALE then
        return defaultLang
    end
    return localisedLang
end

function Locale.setLocale(locale)
    currentLocale = locale
    localisedLang = f.load(string.format(LANG_FILE_RECIPE_PATH, locale, LANG_FILENAME))()
end

function Locale.getLocale()
    return currentLocale
end


return Locale
