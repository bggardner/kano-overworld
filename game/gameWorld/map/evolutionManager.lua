--[[
evolutionManager.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local Utils = require 'system.utils'

local love = love
local f = love.filesystem


local EvolutionManager = {}
EvolutionManager.__index = EvolutionManager

-- local function forward declaration
local incrementRule
local compare, lessThan, lessOrEquals, greaterThan, greaterOrEquals, equals, notEquals
local visibility, moveTo

-- constants
local EVOLUTION_DIR = 'res/evolution/'


function EvolutionManager.create(worldId, gameStates)
 --     print('CREATING Evolution Manager')  -- DEBUG_TAG

    local self = setmetatable({}, EvolutionManager)

    self.worldId = worldId
    self.gameStates = gameStates

    --
    self.evolutions = {}
    self.evolutionDirPath = ''

    --
    self.actions = {
        ['environment'] = {
            ['visibility'] = visibility
        },
        ['object'] = {
            ['moveTo'] = moveTo
        }
    }

    -- Operators used in the comparator for a rule of type event.
    self.operators = {
        ['lessThan'] = lessThan,
        ['lessOrEquals'] = lessOrEquals,
        ['greaterThan'] = greaterThan,
        ['greaterOrEquals'] = greaterOrEquals,
        ['equals'] = equals,
        ['notEquals'] = notEquals,
    }

    return self
end

function EvolutionManager:load()
 --     print("LOADING Evolution Manager")  -- DEBUG_TAG

    -- Set the path to the evolution files for this World.
    self.evolutionDirPath = EVOLUTION_DIR .. self.worldId .. '/'

    -- Get the game variables and triggers.
    self.gameVariables = self.gameStates:getGameVariables()
    self.triggers = self.gameStates:getDialogueTriggers()

    -- Loading all the evolution files in this world.
    for _, evolutionFile in pairs(Utils.getFileTree(self.evolutionDirPath)) do
        self.evolutions[evolutionFile] = f.load(self.evolutionDirPath .. evolutionFile)()
        self.evolutions[evolutionFile].objects = {}
        self.evolutions[evolutionFile].cRule = 1
    end
end

-- Public -------------------------------------------------------------------------------

function EvolutionManager:checkEvent(trigger)
    local rule, condition

    for evolutionId, evolution in pairs(self.evolutions) do
        if evolution.cRule <= 0 then
            goto continue
        end

        rule = evolution.rules[evolution.cRule]
        condition = rule.condition

        if trigger then
            if (condition.a == trigger or condition.b == trigger) then
                if compare(self, condition.cond, condition.a, condition.b) then
                    incrementRule(self, evolution, evolutionId)
                end
            end
        else
            if compare(self, condition.cond, condition.a, condition.b) then
                incrementRule(self, evolution, evolutionId)
            end
        end

        ::continue::
    end
end

function EvolutionManager:register(object, evolutionFile)
    table.insert(self.evolutions[evolutionFile].objects, object)
end

function EvolutionManager:getActions()
    return self.actions
end

function EvolutionManager:getOperators()
    return self.operators
end

-- Private - Rule Evaluation ------------------------------------------------------------

function incrementRule(self, evolution, evolutionId)
    local actions = evolution.rules[evolution.cRule].actions

    -- Execute all the evolution actions.
    for _, action in ipairs(actions) do
        for _, object in ipairs(evolution.objects) do
            self.actions[evolution.type][action.type](object, action)
        end
    end

    if evolution.cRule == #evolution.rules then
        -- Set the evolution as completed and remove it from the list.
        evolution.cRule = 0
        self.evolutions[evolutionId] = nil
    else
        -- Increment the current rule and check if we can increment again.
        evolution.cRule = evolution.cRule + 1
        self:checkEvent()  -- TODO: This can be improved - no need to evaluate all rules.
    end
end

function compare(self, operator, a, b)
    -- Replace operands with engine variables from triggers or arguments.
    if type(a) == 'string' then
        a = self.triggers:get(a) or self.gameVariables:get(a)
    end
    if type(b) == 'string' then
        b = self.triggers:get(b) or self.gameVariables:get(b)
    end

    return self.operators[operator](a, b)
end

function lessThan(a, b)
    return a < b
end

function lessOrEquals(a, b)
    return a <= b
end

function greaterThan(a, b)
    return a > b
end

function greaterOrEquals(a, b)
    return a >= b
end

function equals(a, b)
    return a == b
end

function notEquals(a, b)
    return a ~= b
end

-- Private - Actions --------------------------------------------------------------------

function visibility(object, action)
    object:setLayerVisibility(action.layerName, action.visibility)
end

function moveTo(object, action)
    object:moveTo(action.x, action.y)
end


return EvolutionManager
