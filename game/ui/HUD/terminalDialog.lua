--[[
terminalDialog.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Colour = require 'system.colour'
local TemplateDialog = require 'game.ui.HUD.templateDialog'

local love = love
local g = love.graphics


local TerminalDialog = {}
TerminalDialog.__index = TerminalDialog

-- inherit from base class TemplateDialog
setmetatable(TerminalDialog, {__index = TemplateDialog})


function TerminalDialog.create(gameStates)
 --     print("CREATING TerminalDialog")  -- DEBUG_TAG

    local self = TemplateDialog.create(gameStates)
    self = setmetatable(self, TerminalDialog)

    self.name = nil
    -- The type of dialog
    self.type = 'terminalDialog'

    return self
end

function TerminalDialog:load()
 --     print("LOADING TerminalDialog")  -- DEBUG_TAG
    TemplateDialog.load(self)
end

function TerminalDialog:activate(dialogue, name)
    if name ~= "" then
        self.name = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
                              string.upper(name))
    end

    TemplateDialog.activate(self, dialogue)
end

function TerminalDialog:drawBox()
    local lineW = g.getLineWidth()

    -- shadow
    g.setLineWidth(6)
    Colour.set(Colour.BLACK, 120)
    g.rectangle("fill", self.x - 2, self:getY() + 10, self.w + 4, self:getH(), 2, 2, 10)
    -- background
    Colour.set(Colour.BLACK_OFF)
    g.rectangle("fill", self.x, self:getY(), self.w, self:getH(), 2, 2, 10)
    -- outter border
    g.setLineWidth(4)
    Colour.set(Colour.GREY_LIGHT)
    g.rectangle("line", self.x, self:getY(), self.w, self:getH(), 2, 2, 10)
    -- inner border
    g.setLineWidth(4)
    Colour.set(Colour.GREY_DARK)
    g.rectangle("line", self.x + 4, self:getY() + 4, self.w - 8, self:getH() - 8, 2, 2, 10)
    -- mid border
    g.setLineWidth(4)
    Colour.set(Colour.GREY)
    g.rectangle("line", self.x + 2, self:getY() + 2, self.w - 4, self:getH() - 4, 2, 2, 10)
    -- name
    if self.name then
        g.setLineWidth(2)
        local width = self.name:getWidth() + 16
        local height = self.name:getHeight() + 4
        -- background
        Colour.set(Colour.GREY_DARK)
        g.rectangle("fill", self.x + 8, self:getY() - height * 0.8, width, height, 2, 2, 10)
        -- border
        Colour.set(Colour.WHITE)
        g.rectangle("line", self.x + 8, self:getY() - height * 0.8, width, height, 2, 2, 10)
        -- name
        g.draw(self.name, self.x + 16, self:getY() - (height * 0.8) + 2)
    end

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end


return TerminalDialog
