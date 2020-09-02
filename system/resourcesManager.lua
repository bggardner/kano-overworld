--[[
resourcesManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Savefile = require 'system.savefile'
local SoundManager = require 'system.soundManager'
local Locale = require 'system.locale'

local love = love
local g = love.graphics


local ResourcesManager = {}
ResourcesManager.__index = ResourcesManager

-- constants
local PATH_IMAGES = 'res/images/'
local PATH_FONTS = 'res/fonts/'


function ResourcesManager.create()
 --     print("CREATING ResourcesManager")  -- DEBUG_TAG

    local self = setmetatable({}, ResourcesManager)

    -- Fonts
    self.fonts = {}
    self.DEFAULT_FONT_8 = "Fiery_Turk8"
    self.DEFAULT_FONT_16 = "Fiery_Turk16"
    self.DEFAULT_FONT_24 = "Fiery_Turk24"
    -- Images
    self.images = {}
    self.CHARACTER_PORTRAITS = 'ui/dialogCharacters.png'
    self.UI_ELEMENTS = 'ui/uiElements.png'
    self.CODEX_ELEMENTS = 'ui/codexElements.png'
    -- Songs
    self.SONG_CHIPPYTOON = "chippytoon"
    -- Audio Visualiser
    self.SFX_SINE = "sine"
    self.SFX_SQUARE = "square"
    self.SFX_TRIANGLE = "triangle"
    self.SFX_NOISE = "noise"
    -- SFX
    self.SFX_CONFIRM = "confirm"
    self.SFX_ELECTRONIC_NOISES = "electric-noises-1"
    self.SFX_FAST_TRAVEL = "fast-travel"
    self.SFX_MINIMAP = "minimap"
    self.SFX_MOUSE = "move-cursor"
    self.SFX_RABBITHOLE = "rabbithole"
    self.SFX_TALKING = "talking-default"
    -- Sound beds
    self.BED_CITY = "city-noises-1"
    self.BED_FIRE = "fire-noises-1"
    self.BED_FOREST = "forest-noises-1"
    self.BED_WATERFALL = "waterfall-noises-1"
    self.BED_WAVES = "wave-noises-1"
    -- Save file
    self.savefile = Savefile.create()

    return self
end

-- LOAD and ADD resources ----------------------------------------------------------------

function ResourcesManager:preload()
    -- localization
    Locale:load()
    -- images
    self.images[self.UI_ELEMENTS] = self.loadImage(self.UI_ELEMENTS)
    -- fonts
    self:loadFont(self.DEFAULT_FONT_16, "Fiery_Turk.ttf", 16)
end

function ResourcesManager:load()
 --     print("LOADING Resources Manager")  -- DEBUG_TAG
    -- fonts
    self:loadFont(self.DEFAULT_FONT_8, "Fiery_Turk.ttf", 8)
    self:loadFont(self.DEFAULT_FONT_24, "Fiery_Turk.ttf", 24)
    -- images
    self.images[self.CHARACTER_PORTRAITS] = self.loadImage(self.CHARACTER_PORTRAITS)
    self.images[self.CODEX_ELEMENTS] = self.loadImage(self.CODEX_ELEMENTS)
    -- save file
    self.savefile:load()
    -- sounds
    local songs = {}
    table.insert(songs, self.SONG_CHIPPYTOON)
    local sfx = {}
    table.insert(sfx, self.SFX_CONFIRM)
    table.insert(sfx, self.SFX_ELECTRONIC_NOISES)
    table.insert(sfx, self.SFX_FAST_TRAVEL)
    table.insert(sfx, self.SFX_MINIMAP)
    table.insert(sfx, self.SFX_MOUSE)
    table.insert(sfx, self.SFX_RABBITHOLE)
    table.insert(sfx, self.SFX_TALKING)
    table.insert(sfx, self.SFX_SINE)
    table.insert(sfx, self.SFX_NOISE)
    table.insert(sfx, self.SFX_TRIANGLE)
    table.insert(sfx, self.SFX_SQUARE)
    local beds = {}
    table.insert(beds, self.BED_CITY)
    table.insert(beds, self.BED_FIRE)
    table.insert(beds, self.BED_FOREST)
    table.insert(beds, self.BED_WATERFALL)
    table.insert(beds, self.BED_WAVES)
    SoundManager.load(sfx, songs, beds)
end

function ResourcesManager:loadFont(name, fontFile, size)
    local font = g.newFont(PATH_FONTS..fontFile, size)
    font:setFilter('linear', 'linear', 0)
    self.fonts[name] = font
end

function ResourcesManager.loadImage(imageFile)
    local path = PATH_IMAGES..imageFile
    if love.filesystem.exists(path) then
        local img = g.newImage(path)
        img:setFilter('nearest', 'nearest')
        return img
    end
    return nil
end

-- Save file -----------------------------------------------------------------------------

function ResourcesManager:save()
    self.savefile:save()
end

function ResourcesManager:getSaveData()
    return self.savefile:getData()
end

-- Sound ---------------------------------------------------------------------------------

function ResourcesManager.playSound(name)
    SoundManager.playSound(name)
end

function ResourcesManager.playSong(name, loop)
    SoundManager.playSong(name, loop)
end

function ResourcesManager.stopSong()
    SoundManager.stopSong()
end

function ResourcesManager:playSoundBed(areaKey)
    SoundManager.stopSoundBed()
    if areaKey == "beachArea" then
        SoundManager.playSoundBed(self.BED_WAVES)
    elseif areaKey == "jungleArea" or
       areaKey == "minesentranceArea" then
        SoundManager.playSoundBed(self.BED_FOREST)
    elseif areaKey == "minesArea" then
        SoundManager.playSoundBed(self.BED_FIRE)
    elseif areaKey == "portetherArea" or
           areaKey == "etherstationArea" then
        SoundManager.playSoundBed(self.BED_CITY)
    elseif areaKey == "villageArea" then
        SoundManager.playSoundBed(self.BED_WATERFALL)
    end
end

function ResourcesManager:playSoundByFile(filename)
    -- remove last 4 characters (.wav) of filename
    local name = string.sub(filename, 1, -5)
    SoundManager.playSound(name, true)
end

function ResourcesManager:stopSound()
    SoundManager.stopSound()
end

function ResourcesManager.changeVolume(volume)
    SoundManager.changeVolume(volume)
end

-- Font ----------------------------------------------------------------------------------

function ResourcesManager:setFont(name)
    g.setFont(self.fonts[name])
end

function ResourcesManager:getTextLength(name, text)
    return self.fonts[name]:getWidth(text)
end

function ResourcesManager:getTextHeight(name, text)
    return self.fonts[name]:getHeight(text)
end

function ResourcesManager:getWrap(name, text, limit)
    return self.fonts[name]:getWrap(text, limit)
end


return ResourcesManager
