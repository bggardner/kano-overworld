--[[
npc.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

This is the logic wrapper around an Npc type object coming in from Tiled.
It pops up a character dialog when the player interacts with the object.
]]--


local Character = require 'game.gameWorld.characters.character'
local Locale = require 'system.locale'
local Tserial = require 'libs.Tserial'
local Utils = require 'system.utils'

local love = love
local f = love.filesystem


local Npc = {}
Npc.__index = Npc

-- inherit from base class MapObject
setmetatable(Npc, {__index = Character})

-- local function forward declaration
local setPortraitImage

-- constants
local TILE_S = Utils.tileSize()
local QUESTS_DIR = 'res/quests/'


function Npc.create(objectManager, world, worldId, gameStates, dialogueManager)
 --     print('CREATING Npc')  -- DEBUG_TAG

    local self = Character.create(world, world.canWalkNpc)
    self = setmetatable(self, Npc)

    self.objectManager = objectManager
    self.worldId = worldId
    self.gameStates = gameStates
    self.dialogueManager = dialogueManager

    -- default properties
    self.type = 'interactable'  -- the objects collision behaviour

    -- custom Tiled properties
    self.ai = ''
    self.dialogue = ''
    self.quests = {}
    self.portraitIndex = 1
    self.name = ''
    self.evolutions = {}

    -- portrait
    self.portraitImage = nil
    self.portraitQuad = nil
    self.portraitSx = 1
    self.portraitSy = 1

    -- state
    self.activated = false
    self.statePriorActivate = self.currentState

    -- dialogue
    self.questDialogue = nil
    self.questRule = nil
    self.questTitle = ""
    self.currentDialogue = nil

    -- evolution
    self.map = nil
    self.evolutionsImgIdx = 1

    return self
end

function Npc:load(npcObject, map, evolutionManager)
 --     print('LOADING Npc "' .. npcObject.name .. '"')  -- DEBUG_TAG

    -- save the AI type
    self.ai = npcObject.properties.ai

    -- set the name
    self.name = npcObject.name

    -- 'dialogue' property accepts either a dialogue.lua file or a dialogueKey in lang
    self.dialogue = npcObject.properties.dialogue

    -- load quest
    for _, questFile in ipairs(Tserial.unpack(npcObject.properties.quests or '{}')) do
        -- Save the quest id
        local path = QUESTS_DIR .. self.worldId .. '/' .. questFile
        local quest = f.load(path)()
        -- Add to list if not completed
        if quest.cRule ~= 0 then
            table.insert(self.quests, {id = quest.id, dialogue = quest.dialogue,
                                       title = quest.title})
            -- Add mapId to this quest
            self.gameStates:questAddMapID(quest.id, map.id)
        end
    end

    -- the 'evolutions' property is optional
    self.evolutions = Tserial.unpack(npcObject.properties.evolutions or '{}')
    for _, evolutionFile in ipairs(self.evolutions) do
        evolutionManager:register(self, evolutionFile)
    end
    if next(self.evolutions) then
        self.map = map
        self.tileset, self.evolutionsImgIdx = map:getTilesetFromGID(npcObject.gid)
        self.imgIdx = self.evolutionsImgIdx
    end

    -- set the npc portrait
    self.portraitIndex = tonumber(npcObject.properties.portraitIndex or 1)
    setPortraitImage(self, npcObject, map)

    -- set the position and size
    -- note: Tiled defines npcObject position as BOTTOM left of the npcObject
    self.pos = {x = npcObject.x, y = npcObject.y - TILE_S}
    self.size = {w = npcObject.width, h = npcObject.height}

    -- add this object to the bumpWord to get collision events
    if self.collidable then
        map:bumpWorldAdd(self, self.pos.x, self.pos.y, self.size.w, self.size.h)
    end

    Character.load(self)
end

-- Public -------------------------------------------------------------------------------

function Npc:activate()
    if self.activated then
        return  -- ignore multiple activations
    end

    -- check for active quests and set the dialogue driver class
    if self:checkForQuest() then
        self.currentDialogue = self.dialogueManager:setDialogue(self.questDialogue)
        self.currentDialogue:setQuestData(self.questRule, self.questId)
    else
        self.currentDialogue = self.dialogueManager:setDialogue(self.dialogue)
    end

    -- activate dialog
    self.objectManager:activateAction(
        "characterDialog", self.pos.x, self.pos.y, self.currentDialogue,
        Locale.text(self.name), self.portraitImage, self.portraitQuad, self.portraitSx,
        self.portraitSy, self.questTitle, self
    )

    -- capture state before activation
    self.statePriorActivate = self.currentState

    -- change character state
    self:changeState(self.STATE_IDLE)

    -- change the image back to the evolution quad idx
    if next(self.evolutions) then
        self.imgIdx = self.evolutionsImgIdx
    end

    self.activated = true
end

function Npc:deactivate()
    -- restore state prior the activate
    self:changeState(self.statePriorActivate)

    -- change the image back to the evolution quad idx
    if next(self.evolutions) then
        self.imgIdx = self.evolutionsImgIdx
    end

    self.activated = false
end

function Npc:checkForQuest()
    local active, rule
    -- check for active quests
    for _, quest in ipairs(self.quests) do
        active, rule = self.gameStates:isQuestActive(quest.id, self.pos.x, self.pos.y)
        if active then
            self.questId = quest.id
            self.questDialogue = quest.dialogue
            self.questRule = rule
            self.questTitle = Locale.text(quest.title)
            return true
        end
    end
    return false
end

-- Public - Evolution Actions -----------------------------------------------------------

function Npc:moveTo(tileX, tileY)
    self.pos.x = tileX * TILE_S
    self.pos.y = tileY * TILE_S
    self.world:bumpWorldUpdate(self, self.pos.x, self.pos.y, self.map)
end

-- Private ------------------------------------------------------------------------------

function setPortraitImage(self, npcObject, map)
    local tilesetW, tilesetH, tileW, tileH, x, y

    -- if the custom property 'portraitIndex' was set to 1, crop the portrait
    -- out of the tileset image from the map
    if self.portraitIndex == 1 then
        self.portraitImage, self.portraitIndex = map:getTilesetFromGID(npcObject.gid)
        if self.portraitImage:getWidth() <= 4 * TILE_S or
           self.portraitImage:getHeight() <= 5 * TILE_S then
            self.portraitIndex = 1
        end
        tileW, tileH = TILE_S, TILE_S
        self.portraitSx, self.portraitSy = 4, 4

    -- otherwise, use the portrait from the specific resource
    else
        self.portraitImage = g_resMngr.images[g_resMngr.CHARACTER_PORTRAITS]
        tileW, tileH = 96, 96
        self.portraitSx, self.portraitSy = 1.05, 1.05
    end

    tilesetW, tilesetH = self.portraitImage:getWidth(), self.portraitImage:getHeight()
    x = ((self.portraitIndex - 1) * tileW) % tilesetW
    y = math.floor((self.portraitIndex - 1) * tileW / tilesetW) * tileW

    if tonumber(npcObject.properties.portraitIndex) == 1 then
        self.portraitQuad = love.graphics.newQuad(
            x + tileW * 0.10, y, tileW * 0.8, tileH * 0.8, tilesetW, tilesetH
        )
    else
        self.portraitQuad = love.graphics.newQuad(x, y, tileW, tileH, tilesetW, tilesetH)
    end
end


return Npc
