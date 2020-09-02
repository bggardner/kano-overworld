--[[
plaqueDialog.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Colour = require 'system.colour'
local TemplateDialog = require 'game.ui.HUD.templateDialog'

local love = love
local g = love.graphics


local PlaqueDialog = {}
PlaqueDialog.__index = PlaqueDialog

-- inherit from base class TemplateDialog
setmetatable(PlaqueDialog, {__index = TemplateDialog})


function PlaqueDialog.create(gameStates)
 --     print("CREATING PlaqueDialog")  -- DEBUG_TAG

    local self = TemplateDialog.create(gameStates, Colour.BLACK, Colour.BLACK)
    self = setmetatable(self, PlaqueDialog)

    -- The type of dialog
    self.type = 'plaqueDialog'

    return self
end

function PlaqueDialog:load()
 --     print("LOADING PlaqueDialog")  -- DEBUG_TAG
    TemplateDialog.load(self)
end

function PlaqueDialog:drawBox()
    local lineW = g.getLineWidth()
    -- background
    Colour.set(Colour.GREY_LIGHT)
    g.rectangle("fill", self.x + 4, self:getY() + 4, self.w - 6, self:getH() - 6, 2, 2, 10)

    -- top
    g.setLineWidth(2)
    Colour.set(Colour.WHITE)
    g.line(self.x + 4, self:getY() + 5, self.x + self.w - 4, self:getY() + 5)
    g.line(self.x + 2, self:getY() + 3, self.x + self.w - 6, self:getY() + 3)
    -- side
    Colour.set(Colour.GREY)
    g.line(self.x + 2, self:getY() + 5, self.x + 2, self:getY() + self:getH() - 4)
    g.line(self.x + 4, self:getY() + 7, self.x + 4, self:getY() + self:getH() - 2)

    -- resetting graphics
    Colour.reset()
    g.setLineWidth(lineW)
end


return PlaqueDialog
