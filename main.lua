--[[
main.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Options:
  -d, --debug                    start the game with debug mode toggled
  -w, --world=[worldId]          start the game in a specific world
  -m, --map=[mapId]              start the game in a specific map
  -v, --velocity=[velocity]      set the player speed
  -t, --test                     run the tests and then exit
  --suite=[suiteId]              set the suite of tests to run
  --module=[moduleId]            set the module of tests to run
  --windowed                     run the game in windowed mode
  --no-load                      do not load from the savefile
  --complete-quests              sets the status of all quests to completed
  --unlock-codex                 unlocks all codex elements

Values:
  * worldId       folder name containing map files under res/maps/, e.g. overworld
  * mapId         map filename under res/maps/[worldId]/, e.g. beach.lua
  * velocity      integer value (default is 200)
  * suiteId       see the wiki for a full list (default is validation)
  * moduleId      see the wiki for a full list (default is all)

Examples:
  Package and start the game in world 'overworld' and map 'beach.lua'
    ./package -r --world=overworld --map=beach.lua

  Package and start the game in windowed mode and set the player speed
    ./package -r --windowed --velocity=700

  Package and run all validation tests for quests only
    ./package -r --test --module=quests

For more info and examples:
  https://github.com/KanoComputing/kano-overworld/wiki/1.2.-How-To-Run-It
]]--


local GameStates = require 'game.gameStates'
local Utils = require 'system.utils'
local ResourcesManager = require 'system.resourcesManager'
 -- local TestRunner = require 'tests.TestRunner'  -- DEBUG_TAG
 -- local Profiler = require 'libs.profiler'       -- DEBUG_TAG

local love = love


-- local function forward declaration
 -- local validate, drawDebug  -- DEBUG_TAG

-- global variables
g_resMngr = {}

-- local variables
local gameStates
 -- local profiler = {}  -- DEBUG_TAG


-- Löve ---------------------------------------------------------------------------------

function love.load(args)
    -- utils
    Utils.load()

    -- Parse arguments
    args = Utils.parseArgs(args)
--[[
    local isDebuggingEnabled = (args['-d'] or args['--debug'])  -- DEBUG_TAG_START
    local isTestsEnabled = (args['-t'] or args['--test'])
    Utils.setDebugMode(isDebuggingEnabled)                      -- DEBUG_TAG_END
--]]

    -- Ensure flipping is set up
    Utils.setFlipped()

    -- set display mode
--[[
    if args['--windowed'] then          -- DEBUG_TAG_START
        love.window.setMode(960, 544)
        Utils.initScreen(1, 1, 1)
    else                                -- DEBUG_TAG_END
--]]
        Utils.initScreen(2, 1, 1)
 --     end                                 -- DEBUG_TAG

    -- Test mode
--[[
    if isTestsEnabled then  -- DEBUG_TAG_START
        validate()
        os.exit()
    end  -- DEBUG_TAG_END
--]]

    -- Profiler
 --     profiler.frame = 0        -- DEBUG_TAG
 --     profiler.active = false   -- DEBUG_TAG

    -- Resources manager
    g_resMngr = ResourcesManager.create()

    -- Load game state
    gameStates = GameStates.create()
    gameStates:preload()
end

function love.update(dt)
    gameStates:update(dt)

    -- Profiler
--[[
    if profiler.active then  -- DEBUG_TAG_START
        profiler.frame = profiler.frame + 1
        if (profiler.frame % 100) == 0 then
            profiler.report = Profiler.report('time', 20)
            Profiler.reset()
        end
    end  -- DEBUG_TAG_END
--]]
end

function love.draw()
    -- Do custom push
    Utils.push()

    gameStates:draw()
 --     drawDebug()  -- DEBUG_TAG

    -- Do custom pop
    Utils.pop()
end

function love.run()
    Utils.trackSessionStart()

    love.load(arg)
    -- We don't want the first frame's dt to include time taken by love.load.
    love.timer.step()

    -- Main loop time
    while true do
        -- Process events
        if love.event then
            love.event.pump()
            for name, a, b, c, d, e, f in love.event.poll() do
                if name == "quit" then
                    love.quit(a)
                    return
                end
                love.handlers[name](a, b, c, d, e, f)
            end
        end

        -- calculate time
        love.timer.step()
        love.update(love.timer.getDelta())

        -- Update screen
        love.graphics.clear()
        love.draw()
        love.graphics.present()

        -- Sleeps 10ms after each udpate. By doing this, CPU time is made available
        -- for other processes, and your OS will love you for it.
        love.timer.sleep(0.001)
    end
end

function love.quit(overrideMap)
    -- stop any sounds
    love.audio.stop()

    if overrideMap == nil then
        overrideMap = true
    end

    gameStates:save(overrideMap)
    g_resMngr:save()

    Utils.saveEvents()
    Utils.trackSessionEnd()

 --     Profiler.stop()  -- DEBUG_TAG
end

-- Input --------------------------------------------------------------------------------

function love.keyreleased(key)
--[[
    if key == "o" then  -- DEBUG_TAG_START
        Utils.toggleDebugMode()
    elseif key == "p" then
        if profiler.active then
            Profiler.stop()
        else
            Profiler.hookall("Lua")
            Profiler.start()
        end
        profiler.active = not profiler.active
    elseif key == 'k' then
        collectgarbage('collect')
    end  -- DEBUG_TAG_END
--]]

    gameStates:keyreleased(key)
end

function love.keypressed(key)
    gameStates:keypressed(key)
end

function love.touchpressed(id, x, y, dx, dy, pressure)
    x, y = Utils.touchTransform(x, y)
    gameStates:touchpressed(id, x, y)
end

function love.mousereleased(x, y, mousebutton)
    gameStates:mousereleased(x, y, mousebutton)
end

function love.mousepressed(x, y, mousebutton)
    gameStates:mousepressed(x, y, mousebutton)
end

-- Private ------------------------------------------------------------------------------

--[[
function drawDebug()  -- DEBUG_TAG_START
    -- Stats
    if Utils.isDebugMode() then
        g_resMngr:setFont(g_resMngr.DEFAULT_FONT_16)
        -- Game
        love.graphics.print("FPS: " .. tostring(love.timer.getFPS()), 10, 60)
        local sw, sh = Utils.getScale()
        love.graphics.print("SCALE: " .. sw .. ", " .. sh, 10, 80)
        -- Player
        love.graphics.print(
            "TILE: " .. math.floor((gameStates.gameManager.world.player.pos.x /
            gameStates.gameManager.world.player.size.w)) .. " " ..
            math.floor((gameStates.gameManager.world.player.pos.y /
            gameStates.gameManager.world.player.size.h)), 10, 100
        )
        love.graphics.print(
            "POS: " .. gameStates.gameManager.world.player.pos.x .. " " ..
            gameStates.gameManager.world.player.pos.y, 10, 120
        )
        -- Graphics and Memory stats
        local stats = love.graphics.getStats()
        love.graphics.print("DRAW CALLS: " .. stats['drawcalls'], 10, 140)
        love.graphics.print("CANVAS SWITCHES: " .. stats['canvasswitches'], 10, 160)
        love.graphics.print(
            string.format("MEM: %.2f MB", collectgarbage('count') / 1024), 10, 180
        )
        love.graphics.print(
            string.format("TEXTURE MEMORY: %.2f MB", stats['texturememory'] / 1024 / 1024),
            10, 200
        )
        love.graphics.print("IMAGES: " .. stats['images'], 10, 220)
        love.graphics.print("CANVASES: " .. stats['canvases'], 10, 240)
        love.graphics.print("FONTS: " .. stats['fonts'], 10, 260)
    end
    -- Profiler
    if profiler.report then
        print(profiler.report)
        profiler.report = nil
    end
end  -- DEBUG_TAG_END
--]]

-- Tests --------------------------------------------------------------------------------

--[[
function validate()  -- DEBUG_TAG_START
    local testRunner = TestRunner.create()
    testRunner:load()
    testRunner:run()
end  -- DEBUG_TAG_END
--]]
