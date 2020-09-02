--[[
templateDialog.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Typewriter = require 'system.typewriter'

local love = love
local g = love.graphics
local t = love.timer


local TemplateDialog = {}
TemplateDialog.__index = TemplateDialog

-- local function forward declaration
local limitText


function TemplateDialog.create(gameStates, textColour, optionColour)
    local self = setmetatable({}, TemplateDialog)

    self.gameStates = gameStates

    -- type of dialog
    self.type = ''

    -- states
    self.STATE_INACTIVE = 0
    self.STATE_WRITING = 1
    self.STATE_SCROLLING = 2
    self.STATE_RESPONSE = 3
    self.STATE_CLOSING = 4
    self.currentState = self.STATE_INACTIVE

    -- size and positions
    self.tileSize = 96         -- the portrait image size -- TODO: move this
    self.w = 0                 -- the width of the dialog (px)
    self.h = 0                 -- the height of the dialog (px)
    self.x = 0                 -- the x position of the dialog (px)
    self.y = 0                 -- the y position of the dialog (px)
    self.textX = 0             -- the x position of the text (px)
    self.textY = 0             -- the y position of the text (px)

    -- typewriter effect
    self.typewriter = Typewriter.create(textColour)
    self.optionColour = optionColour or Colour.WHITE
    self.numLines = 3          -- Maximum number of lines in a dialogue
    self.widthSpace = self.w - (self.textX - self.x)  -- text space per line

    -- dialogue
    self.dialogue = nil        -- the Dialogue class which provides the data
    self.currentOption = 1     -- the dialogue option index

    -- down triangle animation
    self.timeAnim = 0
    self.triangleVisible = true
    self.x1, self.y1 = 0, 0    -- triangle coordinates (px)
    self.x2, self.y2 = 0, 0
    self.x3, self.y3 = 0, 0

    -- vertial options list
    self.verticalOptions = false
    self.verticalOffset = 0

    return self
end

function TemplateDialog:load()
    -- size and positions
    local sx, sy = Utils.getScale()
    local w = g.getWidth() / sx
    local h = g.getHeight() / sy
    self.w = Utils.round((w / 2) + 10)
    self.h = self.tileSize + 18
    self.x = Utils.round((w - self.w) / 2)
    self.y = h - self.h - 20
    self.textX = self.x + 10
    self.textY = self.y + 7

    -- typewriter effect
    self.widthSpace = self.w - (self.textX - self.x)

    -- down triangle animation
    self.x1, self.y1 = self.x + self.w - 28, self.y + self.h - 20
    self.x2, self.y2 = self.x + self.w - 10, self.y + self.h - 20
    self.x3, self.y3 = self.x + self.w - 19, self.y + self.h - 10
end

function TemplateDialog:update(dt)
    if self.currentState == self.STATE_WRITING then
        self.typewriter:update(dt)
        if self.typewriter:complete() then
            if next(self.textBatches) then
                self.currentState = self.STATE_SCROLLING
                self.timeAnim = t.getTime()
                self.triangleVisible = true
            else
                self.currentState = self.STATE_RESPONSE
            end
        end
    elseif self.currentState == self.STATE_SCROLLING then
        self:animateTriangle()
    elseif self.currentState == self.STATE_RESPONSE then
        self.typewriter:update(dt)
    end
    return
end

function TemplateDialog:draw()
    if self.currentState == self.STATE_WRITING then
        self:drawBox()
        self.typewriter:draw()
    elseif self.currentState == self.STATE_SCROLLING then
        self:drawBox()
        self.typewriter:draw()
        self:drawTriangle()
    elseif self.currentState == self.STATE_RESPONSE then
        self:drawBox()
        self.typewriter:draw()
        if #self.optionsText > 0 then
            self:drawOptions()
        end
    end
end

function TemplateDialog:animateTriangle()
    local cTime = t.getTime()
    if (cTime - self.timeAnim) > 0.6 then
        self.timeAnim = cTime
        self.triangleVisible = not self.triangleVisible
    end
end

function TemplateDialog:drawBox()
    -- implement me!
end

function TemplateDialog:drawOptions()
    local x = self.textX

    local y = Utils.round(
        self.textY + (self.optionsText[1]:getHeight() * 3.35) - self.verticalOffset
    )

    for i, optionText in ipairs(self.optionsText) do
        if self.currentOption == i then
            Colour.set(Colour.ORANGE)
        else
            Colour.set(self.optionColour)
        end
        g.draw(optionText, x, y)

        if self.verticalOptions then
            y = y + optionText:getHeight()
        else
            x = x + optionText:getWidth() + 20
        end
        Colour.reset()
    end
end

function TemplateDialog:drawTriangle()
    if self.triangleVisible then
        Colour.set(Colour.ORANGE_PALE)

        g.polygon("fill", self.x1, self.y1, self.x2, self.y2, self.x3, self.y3)

        -- resetting graphics
        Colour.reset()
    end
end

function TemplateDialog:activate(dialogue)
    self.dialogue = dialogue
    self:moveToNextDialogue(self)
end

function TemplateDialog:deactivate(changeState, gameStates, ingameUI)
    self.currentState = self.STATE_INACTIVE
    self.currentOption = nil
    if changeState then
        gameStates:changeState(gameStates.STATE_INGAME)
    end
    ingameUI:deactivateDialog(self.type)
    self.dialogue:reset()
end

-- Public -------------------------------------------------------------------------------

function TemplateDialog:moveToNextDialogue()
    local dialogueData = self.dialogue:next(self.currentOption)
    if not dialogueData then
        return false
    end

    -- get the dialogue text
    local copyText, copyKey = self.dialogue:getCopy()

    -- check if this copyKey is part of an active rule
    self.gameStates:checkQuestDialogue(copyKey)
    self.gameStates:checkCodexDialogue(copyKey)

    -- get possible options
    self.optionsText = self.dialogue:getOptions()
    for i, optionCopy in pairs(self.optionsText) do
        self.optionsText[i] = g.newText(
            g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], optionCopy
        )
    end
    self.currentOption = 1

    -- check if options need to be displayed on multiple lines
    local optionsWidth = getOptionsWidth(self.optionsText)
    self.verticalOptions = (optionsWidth > self.widthSpace)

    -- reset option offset
    self.verticalOffset = 0

    -- initialise the typewriter with a text batch to fit in the box
    self.textBatches = limitText(copyText, self.widthSpace, self.numLines)

    -- if only one text batch then set the vertical offset
    if #self.textBatches == 1 and self.verticalOptions then
        self.verticalOffset = getVerticalOffset(self.optionsText)
    end

    self.typewriter:init(
        table.remove(self.textBatches, 1),
        self.textX,
        self.textY - self.verticalOffset,
        0.01,
        g_resMngr.DEFAULT_FONT_16
    )
    self.currentState = self.STATE_WRITING

    return true
end

function TemplateDialog:getY()
    return self.y - self.verticalOffset
end

function TemplateDialog:getH()
    return self.h + self.verticalOffset
end

-- Input --------------------------------------------------------------------------------

function TemplateDialog:controls(isReleased, key, mousebutton, touchX, touchY, gameStates, ingameUI)
    if self.currentState == self.STATE_RESPONSE then
        if isReleased and (key == 'return' or mousebutton == 1) then
            if not self:moveToNextDialogue() then
                g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
                -- Change state if we are not in minimap
                local changeState = not gameStates:isMenu()
                self:deactivate(changeState, gameStates, ingameUI)
            end
            return

        elseif not isReleased and (key == 'right' or key == 'd' or key == 'down' or key == 's') then
            self.currentOption = math.min(self.currentOption + 1, #self.optionsText)

        elseif not isReleased and (key == 'left' or key == 'a' or key == 'up' or key == 'w') then
            self.currentOption = math.max(1, self.currentOption - 1)
        end

    elseif self.currentState == self.STATE_SCROLLING then
        if isReleased and
           (key == 'return' or key == 'down' or key == 's' or mousebutton == 1) then

            g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
            self.currentState = self.STATE_WRITING

            local nextBatch = table.remove(self.textBatches, 1)

            if #self.textBatches == 0 and self.verticalOptions then
                self.verticalOffset = getVerticalOffset(self.optionsText)
            end

            self.typewriter:init(
                nextBatch,
                self.textX,
                self.textY - self.verticalOffset,
                0.01,
                g_resMngr.DEFAULT_FONT_16
            )
        end
    end

    if self.currentState == self.STATE_RESPONSE then
        if (key == 'left' or key == 'right' or key == 'up' or key == 'down' or
            key == 'a' or key == 'd' or key == 'w' or key == 's') and
           not isReleased and self.dialogue:getNumOptions() == 0 then

            g_resMngr.playSound(g_resMngr.SFX_CONFIRM)
            -- Change state if we are not in minimap
            local changeState = not gameStates:isMenu()
            self:deactivate(changeState, gameStates, ingameUI)
            return
        end
    end
end

-- Private ------------------------------------------------------------------------------

function limitText(text, width, numLines)
    local textBatches = {}
    local _, lines = g_resMngr:getWrap(g_resMngr.DEFAULT_FONT_16, text, width - 20)
    local lineIdx = 2
    local currentLine = lines[1] .. "\n"

    for i = 2, #lines do
        currentLine = currentLine .. lines[i] .. "\n"
        -- check if we have reached the max number of lines
        if lineIdx == numLines then
            table.insert(textBatches, currentLine)
            lineIdx = 0
            currentLine = ''
        end
        lineIdx = lineIdx + 1
    end
    -- Check if we have something to add still
    if currentLine ~= '' then
        table.insert(textBatches, currentLine)
    end
    return textBatches
end

function getOptionsWidth(optionsText)
    local optionsWidth = 0
    for _, optionText in ipairs(optionsText) do
        optionsWidth = optionsWidth + optionText:getWidth()
    end
    -- add padding
    local padding = (#optionsText - 1) * 20
    optionsWidth = optionsWidth + padding

    return optionsWidth
end

function getVerticalOffset(optionsText)
    return Utils.round(optionsText[1]:getHeight() * (#optionsText - 1))
end

return TemplateDialog
