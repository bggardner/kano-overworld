--[[
audioVisualiser.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around a AudioVisualiser type object coming in from Tiled.

It uses the LÖVE2D audio decoders to extract the raw data of several audio formats.
For the supported sounds, it processes the raw data to obtain an array of subsamples
that can be rendered in different interesting ways.

For more info on WAV file formats read: http://soundfile.sapp.org/doc/WaveFormat/
]]--


local MapObject = require 'game.gameWorld.map.mapObject'
local Locale = require 'system.locale'
local Colour = require 'system.colour'
local Utils = require 'system.utils'

local love = love
local g = love.graphics
local s = love.sound
local t = love.timer


local AudioVisualiser = {}
AudioVisualiser.__index = AudioVisualiser

-- Inherit from base class.
setmetatable(AudioVisualiser, {__index = MapObject})

-- Local function forward declaration.
local play, stop, changeTrack, playbackTimeToSubsample
local loadSound, averageSubsampling, drawConnectors

-- Constants.
local SOUNDS_DIR = 'res/sounds/'


function AudioVisualiser.create()
    local self = MapObject.create()
    self = setmetatable(self, AudioVisualiser)

    -- Default properties.
    self.type = 'interactable'        -- the objects collision behaviour
    self.collidable = true            -- the player will not to move through this object

    -- Custom Tiled properties.
    self.id = ''                      -- the unique id of the object

    -- Internal state.
    self.STATE_STOPPED = 1
    self.STATE_PLAYING = 2
    self.state = self.STATE_STOPPED   -- the current state

    -- Data.
    self.sounds = {
        ['sine'] = {ampScale = 3, zoomFactor = 6.5},
        ['triangle'] = {ampScale = 3.5, zoomFactor = 6},
        ['square'] = {ampScale = 5.5, zoomFactor = 6},
        ['noise'] = {ampScale = 10, zoomFactor = 5},
    }

    -- Visualisation.
    self.sound = {}            -- the current sound table from self.sounds
    self.soundFilename = ''    -- the audio file to play
    self.soundText = nil       -- the text object for rendering the sound filename
    self.startTime = 0         -- the time which playback was started
    self.playbackTime = 0      -- how many seconds we've been playing for

    -- Sampling.
    self.currentIdx = 1        -- the index of the current sample being played
    self.sampleBlock = 0       -- how many subsamples the visualiser displays

    return self
end

function AudioVisualiser:load(visualiserObject, map)
    MapObject.load(self, visualiserObject)

    -- We place this as a rectangle in the map, the Y becomes the top left corner.
    local TILE_S = Utils.tileSize()
    self.pos.y = self.pos.y + TILE_S

    -- Load the object properties from the Tiled object.
    self.id = visualiserObject.properties.id

    -- Add this object to the bumpWord to get collision events.
    map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)

    -- Wave configuration.
    self.sampleBlock = self.size.w - 10

    -- Load and process the sounds.
    for soundFilename in pairs(self.sounds) do
        loadSound(self, soundFilename)
    end
    self.soundText = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_8])
end

function AudioVisualiser:update()
    if self.state == self.STATE_PLAYING then
        -- Using timer here to count playback time to account for Menu pause.
        self.playbackTime = t.getTime() - self.startTime
        self.currentIdx = playbackTimeToSubsample(self.playbackTime, self.sound)

        -- Loop at the begining.
        if self.currentIdx >= #self.sound.data then
            stop(self)
            play(self)
        end
    end
end

function AudioVisualiser:draw()
    if self.state == self.STATE_PLAYING then
        drawConnectors(
            self, self.pos.x + 5, self.pos.y + self.size.h / 2, self.sound.ampScale
        )
        g.draw(
            self.soundText,
            self.pos.x + 7, self.pos.y + self.size.h - self.soundText:getHeight() - 2
        )
    end
end

function AudioVisualiser:notify(event, soundFilename)
    if event == 'pressed' then
        changeTrack(self, soundFilename)
        -- Avoid playing sounds that could not be loaded.
        if not self.sound then
--[[
            print(   -- DEBUG_TAG_START
                'ERROR: AudioVisualiser: notify: Sound ' .. soundFilename .. ' invalid.'
            )        -- DEBUG_TAG_END
--]]
            return
        end
        -- Reduce the volume.
        g_resMngr.changeVolume(0.2)
        -- Track the user interaction.
        Utils.addInteraction()
        -- Continue playback.
        play(self)

    elseif event == 'released' then
        -- Restore volume.
        g_resMngr.changeVolume(0.5)
        -- Stop and reset playback.
        stop(self)
    end
end

-- Private - Playback -------------------------------------------------------------------

function changeTrack(self, soundFilename)
    -- Set the sound.
    self.soundFilename = soundFilename .. '.wav'
    Utils.setText(self.soundText, Locale.text(soundFilename))
    self.sound = self.sounds[soundFilename]
end

function play(self)
    self.state = self.STATE_PLAYING
    -- Start playback.
    self.startTime = t.getTime()
    -- Play the sound.
    g_resMngr:playSoundByFile(self.soundFilename)
end

function stop(self)
    self.state = self.STATE_STOPPED
    -- Reset playback.
    self.startTime = 0
    -- Stop the sound.
    g_resMngr.stopSound()
end

function playbackTimeToSubsample(playbackTime, sound)
    -- Convert time to the actual subsample that is currently playing.
    return math.ceil((playbackTime * sound.sampleRate) / sound.subSampleBlock)
end

-- Private - Audio processing -----------------------------------------------------------

function loadSound(self, soundFilename)
    -- Load the sound in raw format and keep some header info.
    local soundData = s.newSoundData(s.newDecoder(SOUNDS_DIR .. soundFilename .. '.wav'))
    self.sounds[soundFilename].sampleRate = soundData:getSampleRate()

    -- Subsample the raw sound data.
    local subSampledData, subSampleBlock = averageSubsampling(
        self, soundData, self.sounds[soundFilename].zoomFactor
    )
    -- Throw away the raw data and keep the subsampled data.
    self.sounds[soundFilename].data = subSampledData
    self.sounds[soundFilename].subSampleBlock = subSampleBlock
end

function averageSubsampling(self, soundData, zoomFactor)
    local data = {}
    local average, blockEnd, left, right

    -- From the given Zoom Factor, determine how many subsamples are produced.
    local subSampleCount = math.pow(2, zoomFactor - 1) * self.sampleBlock

    -- Determine how many samples need to be averaged to produce a subsample.
    local subSampleBlock = math.floor(soundData:getSampleCount() / subSampleCount)

    for i = 0, soundData:getSampleCount() - 1, subSampleBlock do
        average = 0
        blockEnd = math.min(i + subSampleBlock - 1, soundData:getSampleCount() - 1)

        -- Iterate over a block of samples to produce one subsample.
        for j = i, blockEnd do
            -- Stereo.
            if soundData:getChannels() == 2 then
                -- Extract left and right channel samples.
                left = soundData:getSample(j * 2)
                right = soundData:getSample(j * 2 + 1)
                -- Average the two and flip the sample.
                average = average + (left + right) / 2 * -1

            -- Mono.
            else
                -- Flip the sample (Y increases from top to bottom).
                average = average + (soundData:getSample(j) * -1)
            end
        end

        -- Add the averaged subsample to our data.
        data[#data + 1] = average / (blockEnd - i + 1)
    end

    return data, subSampleBlock
end

-- Private - Drawing methods ------------------------------------------------------------

function drawConnectors(self, x, y, scale)
    Colour.set(Colour.BLUE_SEA)
    local amp1, amp2
    local idx = 1
    local blockEnd = math.min(#self.sound.data - 1, self.currentIdx + self.sampleBlock)

    for i = self.currentIdx, blockEnd do
        amp1 = self.sound.data[i] * self.size.h / 2 * scale
        amp2 = self.sound.data[i + 1] * self.size.h / 2 * scale

        -- Draw waveform.
        g.line(x + idx, y + amp1, x + idx + 1, y + amp2)
        idx = idx + 1
    end
end


return AudioVisualiser
