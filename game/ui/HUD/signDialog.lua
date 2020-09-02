--[[
signDialog.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Colour = require 'system.colour'
local TemplateDialog = require 'game.ui.HUD.templateDialog'

local love = love
local g = love.graphics


local SignDialog = {}
SignDialog.__index = SignDialog

-- inherit from base class TemplateDialog
setmetatable(SignDialog, {__index = TemplateDialog})


function SignDialog.create(gameStates)
 --     print("CREATING SignDialog")  -- DEBUG_TAG

    local self = TemplateDialog.create(gameStates)
    self = setmetatable(self, SignDialog)

    -- The type of dialog
    self.type = 'signDialog'

    return self
end

function SignDialog:load()
 --     print("LOADING SignDialog")  -- DEBUG_TAG
    TemplateDialog.load(self)
end

function SignDialog:drawBox()
    local lineW = g.getLineWidth()

    -- shadow
    g.setLineWidth(6)
    Colour.set(Colour.BLACK, 120)
    g.rectangle("fill", self.x - 2, self:getY() + 10, self.w + 4, self:getH(), 2, 2, 10)
    -- background
    Colour.set(Colour.BROWN_PALE)
    g.rectangle("fill", self.x, self:getY(), self.w, self:getH(), 2, 2, 10)
    -- outter border
    g.setLineWidth(4)
    Colour.set(Colour.BROWN_LIGHT)
    g.rectangle("line", self.x, self:getY(), self.w, self:getH(), 2, 2, 10)
    -- inner border
    g.setLineWidth(4)
    Colour.set(Colour.BROWN_DARK)
    g.rectangle("line", self.x + 4, self:getY() + 4, self.w - 8, self:getH() - 8, 2, 2, 10)
    -- mid border
    g.setLineWidth(4)
    Colour.set(Colour.BROWN)
    g.rectangle("line", self.x + 2, self:getY() + 2, self.w - 4, self:getH() - 4, 2, 2, 10)

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end


return SignDialog
