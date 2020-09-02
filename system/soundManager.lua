--[[
soundManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


require 'libs.slam'

local love = love
local a = love.audio


local Sound = {}

-- constants
local SOUND_FOLDER = "res/sounds/"
local SFX_EXTENSION = ".wav"
local SONG_EXTENSION = ".ogg"

-- upvalues
local sounds = {}
local songs = {}
local beds = {}
local current_song = nil
local current_sound = nil
local current_bed = nil


function Sound.load(sfxList, songList, bedList)
 --     print("LOADING Sound Manager")  -- DEBUG_TAG

    -- Load all sound files
    for _, s in ipairs(sfxList) do
        sounds[s] = a.newSource(SOUND_FOLDER..s..SFX_EXTENSION, "static")
        sounds[s]:addTags("sfx")
    end
    -- Load all song files
    for _, s in ipairs(songList) do
        songs[s] = a.newSource(SOUND_FOLDER..s..SONG_EXTENSION, "stream")
        songs[s]:addTags("music")
    end
    -- Load all sound files
    for _, s in ipairs(bedList) do
        beds[s] = a.newSource(SOUND_FOLDER..s..SFX_EXTENSION, "static")
        beds[s]:addTags("bed")
    end
    a.tags.music.setVolume(0.5)
end

function Sound.playSound(name, stoppable)
    a.play(sounds[name])
    if stoppable then
        current_sound = sounds[name]
    end
end

function Sound.stopSound()
    if current_sound then
        current_sound:stop()
        current_sound = nil
    end
end

function Sound.playSong(name, loop)
    -- Stop previously playing music if any
    if current_song then
        current_song:stop()
    end
    -- Play new file
    current_song = songs[name]
    if loop ~= nil then
        current_song:setLooping(loop)
    else
        current_song:setLooping(true)
    end
    a.play(current_song)
end

function Sound.stopSong()
    if current_song then
        current_song:stop()
        current_song = nil
    end
end

function Sound.changeVolume(volume)
    -- song
    if current_song then
        current_song:setVolume(volume)
    end
    -- sound beds
    if current_bed then
        current_bed:setVolume(volume)
    end
end

function Sound.playSoundBed(name)
    current_bed = beds[name]
    -- Play new file
    a.play(current_bed):setLooping(true)
end

function Sound.stopSoundBed()
    if current_bed then
        current_bed:stop()
        current_bed = nil
    end
end


return Sound
