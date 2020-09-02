--[[
utils.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--


local love = love
local g = love.graphics
local f = love.filesystem


local Utils = {}

-- upvalues
 -- local debugMode = false  -- DEBUG_TAG
local LAUNCHER = "/usr/bin/kano-dashboard-queue-command"
local TILE_S = 32  -- TODO: get this from the map (tilewidth, tileheight)
local isFlipped = false

function Utils.load()
    -- init random
    love.math.setRandomSeed(os.time())
    math.randomseed(os.time())
    math.random()
end

function Utils.tileSize()
    return TILE_S
end

-- Copies all levels of a table
function Utils.deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[Utils.deepcopy(orig_key)] = Utils.deepcopy(orig_value)
        end
        setmetatable(copy, Utils.deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function Utils.tableLength(t)
    local count = 0
    for _ in pairs(t) do count = count + 1 end
    return count
end

function Utils.takeScreenshot(_x, _y)
    local format = 'png'
    local name = 'lastPosition'
    local sw, sh = Utils.getScale()
    local w = TILE_S * sw * 7  -- width in num of tiles
    local h = TILE_S * sh * 7  -- height in num of tiles
    _x = (_x * sw - (w / 2) + (TILE_S * sw) / 2)
    _y = (_y * sh - (h / 2) + (TILE_S * sh) / 2)
    _x = Utils.clamp(_x, 0, g.getWidth() - w)
    _y = Utils.clamp(_y, 0, g.getHeight() - h)
    local pos = {x = _x, y = _y}

    local cropped = love.image.newImageData(w, h)   -- final cropped image
    local raw = love.graphics.newScreenshot()       -- full screen screenshot

    -- copy the pixels from raw to the final image
    cropped:paste(raw, 0, 0, pos.x, pos.y, w, h)
    -- save the image file
    cropped:encode(format, name .. '.' .. format)
    cropped = nil
    raw = nil
end

function Utils.setText(textObject, text)
    -- NOTE: love.graphics.newText returns a Text object. Its set method actually
    -- adds the text in an array that keeps growing indefinitely. This wrapper
    -- will clear said array before actually setting the text on the object.
    -- This was present in love v0.10.0 (will be fixed in the future)
    -- https://bitbucket.org/rude/love/issues/1181/memory-leak-in-lovegraphicstext-set-text
    textObject:clear()
    textObject:set(text)
end

-- Arg Parser ---------------------------------------------------------------------------

local argsTable = {}

function Utils.parseArgs(args)
    local value
    for _, arg in ipairs(args) do
        if arg:find('=') then
            arg, value = arg:match("(%S+)=(%S+)")
        end
        argsTable[arg] = value or true
    end
    return argsTable
end

function Utils.getArgs()
    return argsTable
end

--[[
function Utils.isDebugMode()        -- DEBUG_TAG_START
    return debugMode
end

function Utils.setDebugMode(debug)
    if debug then
        debugMode = debug
    else
        debugMode = false
    end
end

function Utils.toggleDebugMode()
    debugMode = not debugMode
end                                 -- DEBUG_TAG_END
--]]

-- Math ---------------------------------------------------------------------------------

function Utils.wrap(val, min, max)
    if val < min then val = max end
    if val > max then val = min end
    return val
end

-- Clamps a value to a certain range
function Utils.clamp(val, min, max)
    return math.max(math.min(val, max), min)
end

-- Scale a range [min,max] to [a,b]
--           (b-a)(x - min)
--    f(x) = --------------  + a
--              max - min
function Utils.scale(x, a, b, min, max)
    return (((b - a) * (x - min)) / (max - min)) + a
end

function Utils.lerp(a,b,t)
    return (1 - t) * a + (t * b)
end

function Utils.round(num, idp)
    local mult = 10 ^ (idp or 0)
    return math.floor(num * mult + 0.5) / mult
end

-- Strings ------------------------------------------------------------------------------

function Utils.stringStartsWith(str, starts)
   return string.sub(str, 1, string.len(starts)) == starts
end

function Utils.stringEndsWith(str, ends)
   return ends == '' or string.sub(str, -string.len(ends)) == ends
end

function Utils.firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end

function Utils.stringSplit(string, separator)
    if not separator or separator == '' then
        separator = "%s"
    end

    local result = {}
    for splitString in string.gmatch(string, "([^"..separator.."]+)") do
        table.insert(result, splitString)
    end

    return result
end

-- Screen -------------------------------------------------------------------------------

local width
local height
local modes = {'windowed', 'scaled', 'stretched'}
local mode = 1
local scaleX = 1
local scaleY = 1
local offsetX = 0
local offsetY = 0

local function calcOffset(sw, sh, w, h, sx, sy)
    local ox, oy
    ox = (sw - w * sx) * 0.5
    oy = (sh - h * sy) * 0.5
    return ox, oy
end

local function setMode(nmode)

    if nmode == 'windowed' then
        if scaleX ~= scaleY then
            scaleX = scaleY
        end
        offsetX, offsetY = 0, 0
        love.window.setMode(
            width * scaleX, height * scaleY,
            -- 1280, 800,
            {fullscreen = false, fullscreentype = 'desktop', vsync = true}
        )
    else
        love.window.setMode(
            0, 0,
            {fullscreen = true, fullscreentype = 'desktop', vsync = true}
        )
        local sw, sh = g.getDimensions()

        if nmode == 'stretched' then
            scaleX = sw / width
            scaleY = sh / height
        end

        offsetX, offsetY = calcOffset(sw, sh, width, height, scaleX, scaleY)
    end
end

function Utils.initScreen(nmode, nscaleX, nscaleY)
    g.setBackgroundColor(0, 0, 0)
    g.setDefaultFilter("nearest", "nearest", 10)

    mode = nmode
    scaleX = nscaleX
    scaleY = nscaleY
    width, height = g.getDimensions()

    setMode(modes[mode])
end

function Utils.push()
    g.push()
    g.translate(offsetX, offsetY)
    g.scale(scaleX, scaleY)
end

function Utils.pop()
    g.pop()
end

function Utils.setScale(x, y)
    scaleX = x
    scaleY = y
end

function Utils.getScale()
    return scaleX, scaleY
end

function Utils.mid()
    return (g.getWidth() / 2)
end

-- Images -------------------------------------------------------------------------------

-- Returns size of image in a duple
function Utils.getSize(img)
    return img:getWidth(), img:getHeight()
end

function Utils.x_iCentered(img)
    return (((g.getWidth() / scaleX) - img:getWidth()) / 2)
end

function Utils.y_iCentered(img)
    return (((g.getHeight() / scaleY) - img:getHeight()) / 2)
end

-- Files --------------------------------------------------------------------------------

function Utils.fileExists(path)
    if type(path) ~= "string" then
        return false
    end
    return os.rename(path, path) and true or false
end

function Utils.getFileTree(dir, fileTree)
    fileTree = fileTree or {}  -- set default value if param not supplied
    local filesTable = f.getDirectoryItems(dir)

    for _, fileName in ipairs(filesTable) do
        local filePath = dir .. "/" .. fileName

        if f.isFile(filePath) then
            table.insert(fileTree, fileName)
        elseif f.isDirectory(filePath) then
            fileTree[fileName] = {}
            Utils.getFileTree(filePath, fileTree[fileName])
        end
    end
    return fileTree
end

function Utils.removePath(path)
    local app = ""
    for str in string.gmatch(path, "([^/]+)") do
        app = str
    end
    return app
end

-- Tracker ------------------------------------------------------------------------------

local launchedApp = ""
local numInteractions = 0

function Utils.addInteraction()
    numInteractions = numInteractions + 1
end

function Utils.saveEvents()
    -- Event App launched
    if launchedApp ~= "" then
        Utils.trackData("kanoOverworld-appLaunch", "app", launchedApp)
    end
    -- Event total number of interactions
    Utils.trackData("kanoOverworld-interactions", "total", numInteractions)
end

function Utils.trackSessionStart()
    Utils.launchCmd('kano-tracker-ctl session start "kano-overworld" $PPID &')
end

function Utils.trackSessionEnd()
    Utils.launchCmd('kano-tracker-ctl session end "kano-overworld" $PPID &')
end

function Utils.trackData(name, key, value)
    if type(value) == 'number' then
        Utils.launchCmd(
            "kano-tracker-ctl data " .. name .. " '{\"" .. key .. "\": " .. value ..
            "}' &"
        )
    elseif type(value) == 'string' then
        Utils.launchCmd(
            "kano-tracker-ctl data " .. name .. " '{\"" .. key .. "\": \"" .. value ..
            "\"}' &"
        )
--[[
    else   -- DEBUG_TAG_START
        print(
            'Utils: trackData: Data type ' .. type(value) ..
            ' not supported!'
        )  -- DEBUG_TAG_END
--]]
    end
end

function Utils.trackDataJSON(name, key, value)
    Utils.launchCmd(
        "kano-tracker-ctl data " .. name .. " '{\"" .. key .. "\": " .. value .. "}' &"
    )
end

function Utils.trackAction(name)
    Utils.launchCmd('kano-tracker-ctl action "' .. name .. '" &')
end

-- System -------------------------------------------------------------------------------

function Utils.launchApp(cmd)
    if love.system.getOS() ~= 'Linux' then
--[[
        print(  -- DEBUG_TAG_START
            "Utils.launchApp: ERROR: Will not exec '" .. cmd .. "' on this platform."
        )       -- DEBUG_TAG_END
--]]
        love.event.quit()
    end

    --  This function is PI SPECIFIC
    if launchedApp ~= "" then
 --         print("You shouldn't try to launch " .. launchedApp .. " twice!")  -- DEBUG_TAG
        return
    end

    -- for tracking, remove the path
    launchedApp = Utils.removePath(cmd)

    -- Cause a command to be executed after we exit
    -- we will then be restarted automatically

    os.execute(LAUNCHER.." "..cmd)
    love.event.quit()
end

function Utils.launchCmd(cmd, force)
    if love.system.getOS() ~= 'Linux' and force == nil then
--[[
        print(  -- DEBUG_TAG_START
            "Utils.launchCmd: ERROR: Will not exec '" .. cmd .. "' on this platform."
        )       -- DEBUG_TAG_END
--]]
        return nil
    end

    local result
    if Utils.stringEndsWith(cmd, '&') then
        os.execute(cmd)
    else
        local handle = io.popen(cmd)
        result = handle:read("*a")
        handle:close()
    end

    return result
end

-- Get pi overscan. Should return zeros on non-pi
function Utils.getOverscan()
    local output = Utils.launchCmd("/usr/bin/overscan")
    local res = {bottom = 0, top = 0, left = 0, right = 0}
    if not output then
        return res
    else
        local t, b, l, r = string.match(output,"(%d+) (%d+) (%d+) (%d+)")
        if b == nil or t == nil or l == nil or r == nil then
            return res
        end
        res = {bottom = b, top = t, left = l, right = r}

        return res
    end
end

-- check whether we are connected to the internet
local isInternet = nil

function Utils.isInternet()
    if isInternet ~= nil then
        return isInternet
    end

    -- we're using lua 5.1, so using echo to get the rc
    isInternet = Utils.launchCmd('/usr/bin/is_internet ; echo $?') or ''
    -- remove special characters (quotes)
    isInternet = isInternet:gsub('%W','')
    isInternet = (isInternet == '0')

    return isInternet
end

-- check if there are updates available for Kano OS
local isUpdatesAvailable = nil

function Utils.isUpdatesAvailable()
    if isUpdatesAvailable ~= nil then
        return isUpdatesAvailable
    end

    isUpdatesAvailable = Utils.launchCmd(
        '/usr/bin/jq .state /var/cache/kano-updater/status.json'
    )  or ''
    -- remove special characters (quotes)
    isUpdatesAvailable = isUpdatesAvailable:gsub('%W','')
    isUpdatesAvailable = (
        isUpdatesAvailable == 'updatesavailable' or
        isUpdatesAvailable == 'updatesdownloaded'
    )

    return isUpdatesAvailable
end

function Utils.setFlipped()
    isFlipped = ((os.getenv("QT_QPA_LIBINPUT_TOUCH_MATRIX") or "") ~= "")
end

function Utils.touchTransform(x, y)
    if isFlipped then
        x = width - x
        y = height - y
    end
    return x, y
end


return Utils
