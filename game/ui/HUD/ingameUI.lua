--[[
ingameUI.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local UiDialog = require 'game.ui.HUD.characterDialog'
local SignDialog = require 'game.ui.HUD.signDialog'
local plaqueDialog = require 'game.ui.HUD.plaqueDialog'
local TerminalDialog = require 'game.ui.HUD.terminalDialog'
local LoadingMenu = require 'game.ui.HUD.loadingMenu'
local BottomRightPopUp = require 'game.ui.HUD.bottomRightPopUp'
local CentrePopUp = require 'game.ui.HUD.centrePopUp'
local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Locale = require 'system.locale'

local love = love
local g = love.graphics
local t = love.timer


local IngameUI = {}
IngameUI.__index = IngameUI

-- local function forward declaration
local removeElement, activeElement


function IngameUI.create(gameStates)
 --     print("CREATING IngameUI")  -- DEBUG_TAG

    local self = setmetatable({}, IngameUI)

    -- Dialogues
    self.characterDialog = UiDialog.create(gameStates)
    self.signDialog = SignDialog.create(gameStates)
    self.plaqueDialog = plaqueDialog.create(gameStates)
    self.terminalDialog = TerminalDialog.create(gameStates)
    -- Laoding
    self.loadingMenu = LoadingMenu.create()
    -- Pop-ups
    self.bottomRightPopUp = BottomRightPopUp.create(self)
    self.centrePopUp = CentrePopUp.create(self)

    self.activeElements = {}
    self.popUpQueue = {}

    -- top-left icon
    self.uiElements = nil
    self.topLeft = {}
    -- icon animation
    self.animating = true
    self.stateTime = 0
    self.imageIdx = 1
    self.numFrames = 6
    -- new quest icon
    self.newQuestIcon = {}
    self.newQuestIcon.quads = {}
    -- new codex icon
    self.newCodexIcon = {}
    self.newCodexIcon.quads = {}

    return self
end

function IngameUI:load()
 --     print("LOADING IngameUI")  -- DEBUG_TAG

    self.uiElements = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    -- top-left map icon
    local x = 30
    local y = 30
    local gap = 20
    local tileX, tileY = 375, 187
    local leftW, leftH = 89, 28
    local mapIcon = {}
    mapIcon.quad = g.newQuad(tileX, tileY, leftW, leftH, Utils.getSize(self.uiElements))
    mapIcon.x = x
    mapIcon.y = y
    self.topLeft.map = mapIcon
    x = mapIcon.x + leftW + gap
    -- map text
    local text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
                           string.upper(Locale.text("map")))
    local xText = Utils.round((mapIcon.x + (leftW - text:getWidth()) / 2) + 10)
    local yText = Utils.round((mapIcon.y + (leftH - text:getHeight()) / 2) - 2)
    self.mapText = {text = text, x = xText, y = yText}
    -- top-left quests icon
    tileX, tileY = 488, 159
    leftW, leftH = 121, 28
    local questsIcon = {}
    questsIcon.quad = g.newQuad(tileX, tileY, leftW, leftH, Utils.getSize(self.uiElements))
    questsIcon.x = x
    questsIcon.y = y
    self.topLeft.quest = questsIcon
    x = questsIcon.x + leftW + gap
    -- quest text
    text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
                     string.upper(Locale.text("quests")))
    xText = Utils.round((questsIcon.x + (leftW - text:getWidth()) / 2) + 10)
    yText = Utils.round((questsIcon.y + (leftH - text:getHeight()) / 2) - 2)
    self.questText = {text = text, x = xText, y = yText}
    -- new quest icon
    tileX, tileY = 192, 37
    local questW, questH = 27, 35
    for i = 1, self.numFrames do
        self.newQuestIcon.quads[i] = g.newQuad(
            tileX, tileY, questW, questH, Utils.getSize(self.uiElements)
        )
        tileX = tileX + questW
    end
    self.newQuestIcon.x = questsIcon.x + (leftW - questW) / 2
    self.newQuestIcon.y = questsIcon.y + leftH
    -- top-left codex icon
    tileX, tileY = 464, 187
    leftW, leftH = 109, 28
    local codexIcon = {}
    codexIcon.quad = g.newQuad(tileX, tileY, leftW, leftH, Utils.getSize(self.uiElements))
    codexIcon.x = x
    codexIcon.y = y
    self.topLeft.codex = codexIcon
    -- codex text
    text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
                     string.upper(Locale.text("codex")))
    xText = Utils.round((codexIcon.x + (leftW - text:getWidth()) / 2) + 10)
    yText = Utils.round((codexIcon.y + (leftH - text:getHeight()) / 2) - 2)
    self.codexText = {text = text, x = xText, y = yText}
    -- new codex icon
    tileX, tileY = 354, 37
    local codexW, codexH = 27, 35
    for i = 1, self.numFrames do
        self.newCodexIcon.quads[i] = g.newQuad(
            tileX, tileY, codexW, codexH, Utils.getSize(self.uiElements)
        )
        tileX = tileX + codexW
    end
    self.newCodexIcon.x = codexIcon.x + (leftW - questW) / 2
    self.newCodexIcon.y = codexIcon.y + leftH
    --
    self.loadingMenu:load()
    self.characterDialog:load()
    self.signDialog:load()
    self.plaqueDialog:load()
    self.terminalDialog:load()
    self.centrePopUp:load()
end

function IngameUI:update(dt, gameStates)
    for _,v in ipairs(self.activeElements) do
        v:update(dt, gameStates, self)
    end
    -- Animate the quest or codex icon
    if gameStates.uiManager:hasNewQuest() or gameStates.uiManager:hasNewCodex() then
        local cTime = t.getTime()
        if self.animating then
            if (cTime - self.stateTime) > 0.08 then
                self.imageIdx = (self.imageIdx % self.numFrames) + 1
                self.stateTime = cTime
                self.animating = self.imageIdx < self.numFrames
            end
        else
            self.imageIdx = 1
            if (cTime - self.stateTime) > 2 then
                self.animating = true
                self.stateTime = cTime
            end
        end
    end
end

function IngameUI:draw(uiManager)
    -- Menu logo top-left
    if self.hasMinimap then
        -- map icon
        local map = self.topLeft.map
        g.draw(self.uiElements, map.quad, map.x, map.y)
        g.draw(self.mapText.text, self.mapText.x, self.mapText.y)
        -- quests icon
        local quest = self.topLeft.quest
        g.draw(self.uiElements, quest.quad, quest.x, quest.y)
        g.draw(self.questText.text, self.questText.x, self.questText.y)
        -- codex icon
        local codex = self.topLeft.codex
        g.draw(self.uiElements, codex.quad, codex.x, codex.y)
        g.draw(self.codexText.text, self.codexText.x, self.codexText.y)
        -- new quest animation
        if uiManager:hasNewQuest() then
            Colour.set(Colour.WHITE)
            g.draw(self.uiElements, self.newQuestIcon.quads[self.imageIdx],
                   self.newQuestIcon.x, self.newQuestIcon.y)
        end
        -- new codex animation
        if uiManager:hasNewCodex() then
            Colour.set(Colour.WHITE)
            g.draw(self.uiElements, self.newCodexIcon.quads[self.imageIdx],
                   self.newCodexIcon.x, self.newCodexIcon.y)
        end
    end
    --
    for _, v in ipairs(self.activeElements) do
        v:draw()
    end
end

function IngameUI:deactivateAll(gameStates)
    for k, element in pairs(self.activeElements) do
        if element == self.characterDialog or
           element == self.terminalDialog or
           element == self.signDialog or
           element == self.plaqueDialog then
            element:deactivate(false, gameStates, self)
        end
        self.activeElements[k] = nil
    end
end

-- Dialog -------------------------------------------------------------------------------

function IngameUI:activateDialog(diagType, ...)
    -- Add the dialogue at the beginning of the queue so they are drawn first
    if diagType == "characterDialog" then
        self.characterDialog:activate(...)
        table.insert(self.activeElements, 1, self.characterDialog)
    elseif diagType == "signDialog" then
        self.signDialog:activate(...)
        table.insert(self.activeElements, 1, self.signDialog)
    elseif diagType == "plaqueDialog" then
        self.plaqueDialog:activate(...)
        table.insert(self.activeElements, 1, self.plaqueDialog)
    elseif diagType == "terminalDialog" then
        self.terminalDialog:activate(...)
        table.insert(self.activeElements, 1, self.terminalDialog)
    end
end

function IngameUI:deactivateDialog(diagType)
    if diagType == "characterDialog" then
        removeElement(self.activeElements, self.characterDialog)
    elseif diagType == "signDialog" then
        removeElement(self.activeElements, self.signDialog)
    elseif diagType == "plaqueDialog" then
        removeElement(self.activeElements, self.plaqueDialog)
    elseif diagType == "terminalDialog" then
        removeElement(self.activeElements, self.terminalDialog)
    end
end

function IngameUI:setHasMinimap(minimap)
    self.hasMinimap = minimap
end

-- Loading ------------------------------------------------------------------------------

function IngameUI:activateLoading(command)
    table.insert(self.activeElements, self.loadingMenu)
    self.loadingMenu:activate(command)
end

-- Pop Ups ------------------------------------------------------------------------------

function IngameUI:activateBottomRightPopUp(text, colour)
    if text ~= '' then
        local isAlreadyActive = activeElement(self.activeElements, self.bottomRightPopUp)
        -- Activate
        if not isAlreadyActive then
            table.insert(self.activeElements, self.bottomRightPopUp)
            self.bottomRightPopUp:activate(text, colour)
        -- Change existent text
        else
            self.bottomRightPopUp:changeText(text, colour)
        end
    end
end

function IngameUI:deactivateBottomRightPopUp()
    self.bottomRightPopUp:deactivate()
    removeElement(self.activeElements, self.bottomRightPopUp)
end

function IngameUI:activateCentrePopUp(image, title, body, quad)
    if not self.hasMinimap then
        return
    end
    -- Remove bottom popup if active
    if activeElement(self.activeElements, self.bottomRightPopUp) then
        self:deactivateBottomRightPopUp()
    end
    -- Add to the queue if centre popup is already active
    if activeElement(self.activeElements, self.centrePopUp) then
        table.insert(self.popUpQueue,
            {image = image, title = title, body = body, quad = quad}
        )
        return
    end
    -- If we are here is because there is no popup active
    table.insert(self.activeElements, self.centrePopUp)
    self.centrePopUp:activate(image, title, body, quad)
end

function IngameUI:deactivateCentrePopUp()
    removeElement(self.activeElements, self.centrePopUp)
    -- Check if we have any more pop-ups in the queue
    if #self.popUpQueue > 0 then
        local first = self.popUpQueue[1]
        self:activateCentrePopUp(first.image, first.title, first.body, first.quad)
        table.remove(self.popUpQueue, 1)
    end
end

-- Input --------------------------------------------------------------------------------

function IngameUI:controls(isReleased, key, mousebutton, touchX, touchY, gameStates)
    for _,v in ipairs(self.activeElements) do
        if v == self.characterDialog then
            self.characterDialog:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, self)
        elseif v == self.signDialog then
            self.signDialog:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, self)
        elseif v == self.plaqueDialog then
            self.plaqueDialog:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, self)
        elseif v == self.terminalDialog then
            self.terminalDialog:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, self)
        end
    end
end

-- Private ------------------------------------------------------------------------------

function removeElement(l, e)
    for i, v in ipairs(l) do
        if v == e then
            table.remove(l, i)
        end
    end
end

function activeElement(l, e)
    for _, element in ipairs(l) do
        if element == e then
            return true
         end
    end
    return false
end


return IngameUI
