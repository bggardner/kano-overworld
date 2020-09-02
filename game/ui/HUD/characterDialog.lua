--[[
characterDialog.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local TemplateDialog = require 'game.ui.HUD.templateDialog'
local Colour = require 'system.colour'
local Utils = require 'system.utils'

local love = love
local g = love.graphics


local CharacterDialog = {}
CharacterDialog.__index = CharacterDialog

-- inherit from base class TemplateDialog
setmetatable(CharacterDialog, {__index = TemplateDialog})

-- local function forward declaration
local drawName, drawQuestTitle

-- constants
local ICON_SIZE = 23


function CharacterDialog.create(gameStates)
 --     print("CREATING CharacterDialog")  -- DEBUG_TAG

    local self = TemplateDialog.create(gameStates)
    self = setmetatable(self, CharacterDialog)

    self.name = nil
    -- The type of dialog
    self.type = 'characterDialog'

    return self
end

function CharacterDialog:load()
 --     print("LOADING CharacterDialog")  -- DEBUG_TAG
    TemplateDialog.load(self)

    -- move text to the left for portrait image and recalculate text width per line
    self.textX = self.textX + self.tileSize
    self.widthSpace = self.w - (self.textX - self.x)

    self.uiElements = g_resMngr.images[g_resMngr.UI_ELEMENTS]
    self.questQuad = g.newQuad(
        223, 160, ICON_SIZE, ICON_SIZE, Utils.getSize(self.uiElements)
    )
end

function CharacterDialog:drawBox()
    local lineW = g.getLineWidth()

    -- shadow
    g.setLineWidth(6)
    Colour.set(Colour.BLACK, 120)
    g.rectangle("fill", self.x - 2, self:getY() + 10, self.w + 4, self:getH(), 2, 2, 10)
    -- background
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", self.x, self:getY(), self.w, self:getH(), 2, 2, 10)
    -- character
    Colour.set(Colour.WHITE)
    -- don't account for vertical offset for character image so that it stays at
    -- the bottom of the dialog
    g.draw(
        self.portraitImage, self.portraitQuad, self.x + 3, self.y + 10, 0, self.sx, self.sy
    )
    -- outter border
    g.setLineWidth(4)
    Colour.set(Colour.ORANGE_PALE)
    g.rectangle("line", self.x, self:getY(), self.w, self:getH(), 2, 2, 10)
    -- inner border
    Colour.set(Colour.ORANGE_DARK)
    g.rectangle("line", self.x + 4, self:getY() + 4, self.w - 8, self:getH() - 8, 2, 2, 10)
    -- mid border
    Colour.set(Colour.ORANGE)
    g.rectangle("line", self.x + 2, self:getY() + 2, self.w - 4, self:getH() - 4, 2, 2, 10)
    -- name
    if self.name then
        drawName(self)
    end
    -- quest title
    if self.questTitle then
        drawQuestTitle(self)
    end
    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end

function CharacterDialog:activate(dialogue, name, portraitImage, portraitQuad, sx, sy,
                                  quest)
    self.portraitImage = portraitImage
    self.portraitQuad = portraitQuad
    self.sx = sx
    self.sy = sy
    -- name
    if name ~= "" then
        self.name = g.newText(
            g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], string.upper(name)
        )
    else
        self.name = nil
    end
    -- quest
    if quest ~= "" then
        self.questTitle = g.newText(
            g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], string.upper(quest)
        )
    else
        self.questTitle = nil
    end

    TemplateDialog.activate(self, dialogue)
end

-- Private ------------------------------------------------------------------------------

function drawName(self)
    g.setLineWidth(2)
    local width = self.name:getWidth() + 16
    local height = self.name:getHeight() + 4
    -- background
    Colour.set(Colour.GREY_DARK)
    g.rectangle("fill", self.x + 8, Utils.round(self:getY() - height * 0.8),
                width, height, 2, 2, 10)
    -- border
    Colour.set(Colour.WHITE)
    g.rectangle("line", self.x + 8, Utils.round(self:getY() - height * 0.8),
                width, height, 2, 2, 10)
    -- name
    g.draw(self.name, self.x + 16, Utils.round(self:getY() - (height * 0.8)) + 2)
end

function drawQuestTitle(self)
    local padding = 2
    local w = self.questTitle:getWidth() + padding * 3 + ICON_SIZE
    local h = self.questTitle:getHeight() + padding * 2
    local x = Utils.round(self.x + self.w - (w * 0.8))
    local y = self:getY() - (h + 10)
    local triangleX = Utils.round(x + (w / 2) - 10)
    local triangleY = y + h
    local triangleP = triangleY + 10
    Colour.set(Colour.WHITE)
    -- box
    g.rectangle("fill", x, y, w, h, 2, 2, 10)
    -- triangle
    g.polygon(
        "fill", triangleX, triangleY, triangleX + 10, triangleP, triangleX + 20, triangleY
    )
    -- icon
    Colour.set(Colour.ORANGE_KANO)
    g.draw(self.uiElements, self.questQuad, x + padding, y + 3, 0, 0.8, 0.8)
    -- text
    g.draw(self.questTitle, x + padding * 2 + ICON_SIZE, y + padding)
end


return CharacterDialog
