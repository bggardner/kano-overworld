--[[
minimap.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Mini Map class
]]--


local Colour = require 'system.colour'
local Utils = require 'system.utils'
local Locale = require 'system.locale'

local Easing = require 'libs.easing.easing'

local love = love
local g = love.graphics
local m = love.mouse


local MiniMap = {}
MiniMap.__index = MiniMap

-- local function forward declaration
local drawName, drawQuest, drawHoverHighlight, checkPosition, checkTouchPosition,
      checkVisitedMaps, checkQuest, calculatePlayerPos, getHotspotByOrder
local postAnimationCallback

-- hotspot state
local STATE_VISITED = 1
local STATE_NOT_VISITED = 2
local STATE_UNDER_CONTRUCTION = 3
local STATE_DUPLICATE = 4


function MiniMap.create(menu, worldId)
 --     print("CREATING MiniMap")  -- DEBUG_TAG

    local self = setmetatable({}, MiniMap)

    self.menu = menu
    self.hotspots = love.filesystem.load('res/minimaps/' .. worldId .. '/minimap.lua')()
    self.scaledHotspots = Utils.deepcopy(self.hotspots)
    self.navigation = false

    return self
end

function MiniMap:load(tileset, barSize)
 --     print("LOADING MiniMap")  -- DEBUG_TAG

    -- Load image
    self.image = g_resMngr.loadImage("ui/minimap.png")
    self.width, self.height = Utils.getSize(self.image)
    -- Load character --
    -- load file from ~/.local/share/love/kanoOverworld
    self.imagePlayer = g_resMngr.loadImage("avatar.png")
    -- if it doesn't exist load default one
    if not self.imagePlayer then
        self.imagePlayer = g_resMngr.loadImage("judoka.png")
 --         print("Error: loading default player tileset")  -- DEBUG_TAG
    end
    local tilesetW, tilesetH = self.imagePlayer:getWidth(), self.imagePlayer:getHeight()
    local tileS = 32
    self.quadPlayer = g.newQuad(0, 0, tileS, tileS, tilesetW, tilesetH)
    -- Position
    self.posX = Utils.round(Utils.x_iCentered(self.image))
    self.posY = Utils.round(Utils.y_iCentered(self.image))
    -- Change hotspots positions relative to the minimap image and scale
    self.maxOrder = 1
    self.firstRow = 1000
    for i, h in ipairs(self.hotspots) do
        self.scaledHotspots[i].x = h.x + self.posX
        self.scaledHotspots[i].y = h.y + self.posY
        self.firstRow = math.min(self.firstRow, self.scaledHotspots[i].y)
        -- Get name based on key
        if Locale.text(h.name) ~= '' then
            self.scaledHotspots[i].name = Locale.text(h.name)
        end
        -- Calculate the maximum order
        self.maxOrder = math.max(self.maxOrder, h.order)
    end
    -- Discovered bar
    self.bar = { x = 0, y = 0, w = 0, h = barSize, text = ""}
    self.bar.x = self.posX + 2
    self.bar.y = self.posY + self.height + 6
    -- quest marker
    self.tileset = tileset
    self.questQuad = g.newQuad(112, 26, 27, 35, Utils.getSize(tileset))
end

function MiniMap:update(dt)
    -- check for active hotspots
    local sw, sh = Utils.getScale()
    if not self.keyPressed then
        for _, h in ipairs(self.scaledHotspots) do
            local old = self.activeHotspot
            if (h.travel or h.status == STATE_UNDER_CONTRUCTION) and
               checkPosition(h.x * sw, h.y * sh, h.w * sw, h.h * sh, h.status) then
                self.activeHotspot = h
                self:changeActiveHotspot(old)
                if not self.navigation then
                    self.menu:changeNavigation(self.menu.NAV_INSIDE)
                end
                break
            end
        end
    end
    -- update character bouncing animation
    self.elapsedTime = self.elapsedTime + dt
    if self.vy > 0 then
        local ending = self.maxY - self.minY
        self.playerPos.y = Easing.inCubic(self.elapsedTime, self.minY, ending, 0.5)
    else
        local ending = self.minY - self.maxY
        self.playerPos.y = Easing.outCubic(self.elapsedTime, self.maxY, ending, 0.5)
    end
    -- Change direction
    if self.playerPos.y > self.maxY or self.playerPos.y < self.minY then
        self.vy = self.vy * -1
        self.elapsedTime = 0
    end
    -- Calculate dy = newY - startingY
    self.animdy = self.playerPos.y - self.maxY
end

function MiniMap:draw()
    local lineW = g.getLineWidth()

    -- map
    Colour.set(Colour.WHITE)
    g.draw(self.image, self.posX, self.posY)
    -- undiscovered hotspots
    for _, h in ipairs(self.scaledHotspots) do
        -- add effect over undiscovered hotspot
        if h.status == STATE_NOT_VISITED or h.status == STATE_UNDER_CONTRUCTION then
            Colour.set(Colour.BLACK, 100)  -- blur
            g.rectangle("fill", h.x, h.y, h.w, h.h)
        end
    end
    Colour.set(Colour.WHITE)
    -- active hotspot
    if self.navigation then
        drawName(self, self.activeHotspot)
        drawHoverHighlight(self.activeHotspot.x, self.activeHotspot.y,
                      self.activeHotspot.w, self.activeHotspot.h)
    end
    -- active quests
    Colour.set(Colour.WHITE)
    for _, h in ipairs(self.scaledHotspots) do
        drawQuest(self, h)
    end
    -- player
    g.draw(
        self.imagePlayer, self.quadPlayer, self.playerPos.x, self.playerPos.y,
        0, 0.7, 0.7
    )
    -- discovered bar
    Colour.set(Colour.ORANGE_KANO)
    g.rectangle("fill", self.bar.x, self.bar.y, self.bar.w, self.bar.h, 2, 2, 5)
    Colour.set(Colour.WHITE)
    g.draw(self.bar.text, self.bar.x + 4, self.bar.y + 1)

    -- resetting graphics
    g.setLineWidth(lineW)
    Colour.reset()
end

function MiniMap:activate(gameStates)
    gameStates:incrementTrigger('GAME_EVENT_MINIMAP')

    -- Check visited maps
    local mapManager = gameStates:getMapManager()
    local visitedMaps = mapManager:getVisitedMaps()
    local percentage = checkVisitedMaps(self.scaledHotspots, visitedMaps)
    self.activeHotspot = getHotspotByOrder(self.scaledHotspots, 1)
    -- Calculate discovered bar dimension
    self.bar.w = (percentage * (self.width - 4)) / 100
    self.bar.text = g.newText(
        g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16],
        percentage .."% "..Locale.text('discovered')
    )
    -- Check position of the player
    self.vy = 1
    self.elapsedTime = 0
    local map = mapManager:getCurrentMap().id
    self.playerPos = calculatePlayerPos(self.scaledHotspots, map)
    self.minY = self.playerPos.y - 20
    self.maxY = self.playerPos.y
    -- Check active quests
    checkQuest(self.scaledHotspots, gameStates)
    --
    self.animdy = 0
    self.text = g.newText(g_resMngr.fonts[g_resMngr.DEFAULT_FONT_16], "")
end

function MiniMap:deactivate()
    -- remove any quest marker
    for _, hotspot in ipairs(self.scaledHotspots) do
        hotspot.quest = false
    end
    self.bar.text = nil
end

function MiniMap:hasMinimap(gameStates)
    local mapManager = gameStates:getMapManager()
    local map = mapManager:getCurrentMap().id
    self.playerPos = calculatePlayerPos(self.scaledHotspots, map)
    return (self.playerPos.x ~= 0 and self.playerPos.y ~= 0)
end

function MiniMap:changeActiveHotspot(old)
    if old ~= self.activeHotspot then
        g_resMngr.playSound(g_resMngr.SFX_MOUSE)
    end
end

function MiniMap:getPosSize()
    return { x = self.posX, y = self.posY, w = self.width, h = self.height}
end

function MiniMap:getAreaFromFilename(name)
    for _, h in ipairs(self.hotspots) do
        if h.map == name then
            return h.name
        end
    end
    return ""
end

function MiniMap:hasAreaBeenVisited(name, visitedMaps)
    -- Returns area if none of the maps on this area has been visited. Empty otherwise.
    -- Get area
    local area = ""
    for _, h in ipairs(self.hotspots) do
        if h.map == name then
            area = h.name
            break
        end
    end
    -- Check if any of the maps in the same area has been visited
    for _, h in ipairs(self.hotspots) do
        if h.name == area then
            -- remove last 4 characters (.lua) of name
            local map = string.sub(h.map, 1, -5)
            if visitedMaps[map] then
                return ""
            end
        end
    end
    return area
end

-- Returns the percentage of visited maps
function MiniMap:getPercentageVisited(gameStates)
    local total = 0
    local visited = 0
    local mapManager = gameStates:getMapManager()
    local visitedMaps = mapManager:getVisitedMaps()
    for _, hotspot in ipairs(self.scaledHotspots) do
        -- Remove last 4 characters (.lua) of hotspot.map
        local name = string.sub(hotspot.map, 1, -5)
        if hotspot.status < STATE_UNDER_CONTRUCTION then
            if visitedMaps[name] then
                visited = visited + 1
            end
            total = total + 1
        end
    end
    return math.floor((visited / total) * 100)
end

-- Input --------------------------------------------------------------------------------

function MiniMap:controls(isReleased, key, mouseMoved, touchX, touchY, gameStates, menu)
    -- Check keyboard input
    if isReleased and self.navigation then
        if key == 'return' then
            self:enter(gameStates)
        else
            self:keysNavigation(key, menu)
        end
    end
    local sw, sh = Utils.getScale()
    -- Check for mouse click if minimap is active
    if m.isDown(1, 2 ,3) then
        -- Check if the click is inside the map
        if checkPosition(self.posX * sw, self.posY * sh,
                         self.width * sw, self.height * sh, STATE_VISITED) then
            self:click(gameStates)
        end
    end
    -- Check for touch inside the map
    if touchX ~= nil and touchY ~= nil then
        for _, h in ipairs(self.scaledHotspots) do
            if h.travel and
               checkTouchPosition(h.x * sw, h.y * sh, h.w * sw, h.h * sh, touchX, touchY, h.status) then
                if h == self.activeHotspot then
                    self:enter(gameStates)
                else
                    self.activeHotspot = h
                    self:changeActiveHotspot(old)
                end
                break
            end
        end
    end
    -- check for mouse moved to disabled keypress
    if mouseMoved then
        self.keyPressed = false
    end
end

function MiniMap:keysNavigation(key, menu)
    local old = self.activeHotspot
    -- Left
    if key == 'left' or key == 'a' then
        self.keyPressed = true
        local new = (self.activeHotspot.order - 1 )
        if new == 0 then new = self.maxOrder end
        self.activeHotspot = getHotspotByOrder(self.scaledHotspots, new)
    -- Right
    elseif key == 'right' or key == 'd' then
        self.keyPressed = true
        local new = (self.activeHotspot.order + 1 )
        if new > self.maxOrder then new = 1 end
        self.activeHotspot = getHotspotByOrder(self.scaledHotspots, new)
    -- Up
    elseif key == 'up' or key == 'w' then
        -- Change focus to tabBar
        menu:changeNavigation(menu.NAV_TABBAR)
        return
    end
    self:changeActiveHotspot(old)
end

function MiniMap:click(gameStates)
    local h = self.activeHotspot
    if h.travel and h.status == STATE_VISITED then
        local sw, sh = Utils.getScale()
        -- Fast travel to selected area
        if checkPosition(h.x * sw, h.y * sh, h.w * sw, h.h * sh, h.status) then
            g_resMngr.playSound(g_resMngr.SFX_FAST_TRAVEL)
            gameStates:activateAnimation(
                'rectangleSwipeIn', postAnimationCallback, gameStates, self.activeHotspot
            )
        end
    end
end

function MiniMap:enter(gameStates)
    local h = self.activeHotspot
    if h.travel and h.status == STATE_VISITED then
        g_resMngr.playSound(g_resMngr.SFX_FAST_TRAVEL)
        gameStates:activateAnimation(
            'rectangleSwipeIn', postAnimationCallback, gameStates, self.activeHotspot
        )
    end
end

function MiniMap:setNavigation(navigate)
    self.navigation = navigate
end

-- Private ------------------------------------------------------------------------------

function drawName(self, hotspot)
    if hotspot.status == STATE_UNDER_CONTRUCTION then
        Utils.setText(self.text, Locale.text('underConstruction'))
    elseif hotspot.status == STATE_NOT_VISITED then
        Utils.setText(self.text, Locale.text('undiscovered'))
    else
        Utils.setText(self.text, hotspot.name)
    end
    local width = self.text:getWidth() + 10
    local height = self.text:getHeight() + 3
    local bubbleX, bubbleY, triangleX, triangleY, triangleP
    -- First row
    if hotspot.y == self.firstRow then
        bubbleX = Utils.round(hotspot.x + (hotspot.w / 2) - (width / 2))
        bubbleY = Utils.round(hotspot.y + 53)
        triangleX = Utils.round(bubbleX + (width / 2) - 10)
        triangleY = bubbleY
        triangleP = triangleY - 10
    -- Rest of rows
    else
        bubbleX = Utils.round(hotspot.x + (hotspot.w / 2) - (width / 2))
        bubbleY = Utils.round(hotspot.y - 40)
        triangleX = Utils.round(bubbleX + (width / 2) - 10)
        triangleY = bubbleY + height
        triangleP = triangleY + 10
    end
    -- bubble
    Colour.set(Colour.WHITE)
    g.rectangle("fill", bubbleX, bubbleY, width, height, 2, 2, 10)
    -- triangle
    g.polygon(
        "fill", triangleX, triangleY, triangleX + 10, triangleP,
        triangleX + 20, triangleY
    )
    -- text
    Colour.set(Colour.ORANGE_KANO)
    g.draw(self.text, bubbleX + 5, bubbleY)
    -- resetting graphics
    Colour.reset()
end

function drawQuest(self, hotspot)
    if hotspot.quest then
        local x = hotspot.x + 25
        if self.playerPos.x == x then
            x = hotspot.x + 10
        end
        g.draw(
            self.tileset, self.questQuad, x, hotspot.y + self.animdy,
            0, 0.6, 0.6
        )
    end
end

function drawHoverHighlight(x, y, w, h)
    g.setLineWidth(6)
    Colour.set(Colour.WHITE)
    g.rectangle("line", x - 1, y - 1, w, h, 2, 2, 10)
    g.setLineWidth(2)
    Colour.set(Colour.ORANGE_KANO)
    g.rectangle("line", x - 1, y - 1, w, h, 2, 2, 10)
end

-- Changes the status of the hotspots and returns the percentage
function checkVisitedMaps(hotspots, visitedMaps)
    local total = 0
    local visited = 0
    for _, hotspot in ipairs(hotspots) do
        -- Remove last 4 characters (.lua) of hotspot.map
        local name = string.sub(hotspot.map, 1, -5)
        if hotspot.status < STATE_UNDER_CONTRUCTION then
            if visitedMaps[name] then
                hotspot.status = STATE_VISITED
                visited = visited + 1
            else
                hotspot.status = STATE_NOT_VISITED
            end
            total = total + 1
        end
    end
    return math.floor((visited / total) * 100)
end

function checkQuest(hotspots, gameStates)
    local quests = gameStates:getQuestInfo()
    for _, hotspot in ipairs(hotspots) do
        -- active quests
        for _, quest in ipairs(quests.activeQuests) do
            if (hotspot.map == quest.mapId) and (quest.cRule > 0) then
                hotspot.quest = true
            end
        end
    end
end

function checkPosition(x, y, w, h, status)
    return status ~= STATE_DUPLICATE and
           ((m.getX() >= x) and (m.getX() <= x + w)) and
           ((m.getY() >= y) and (m.getY() <= y + h))
end

function checkTouchPosition(x, y, w, h, touchX, touchY, status)
    return status ~= STATE_DUPLICATE and
           (x <= touchX) and (touchX <= (x + w)) and
           (y <= touchY) and (touchY <= (y + h))
end

function calculatePlayerPos(hotspots, map)
    for _, hotspot in ipairs(hotspots) do
        if map == hotspot.map then
            return {x = hotspot.x + 25, y = hotspot.y}
        end
    end
    return {x = 0, y = 0}
end

function getHotspotByOrder(hotspots, number)
    local first
    for _, hotspot in ipairs(hotspots) do
        if hotspot.order == number then
            return hotspot
        end
        -- Save the hotspot 1, just in case
        if hotspot.order == 1 then
            first = hotspot
        end
    end
    -- If we couldn't found one return hotspot 1, as default
    return first
end

function postAnimationCallback(gameStates, hotspot)
    gameStates:changeMap(hotspot.map)
    -- Tracking
    Utils.trackAction("kano-overworld-fast-travel")
    -- restore volume
    g_resMngr.changeVolume(0.5)
    --
    gameStates:activateAnimation('rectangleSwipeOut')
    g_resMngr.playSound(g_resMngr.SFX_FAST_TRAVEL)
end


return MiniMap
