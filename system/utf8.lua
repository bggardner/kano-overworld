--[[
utf8.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

]]--

local UTF8 = {}

function UTF8.iter(str)
    -- iterator which returns the characters in a UTF8 string, as strings.
    
    local currIndex = 1
    local theStr = str
    local malformed = "\239\191\189"  -- replacement character U+FFFD
    
    local function charLen()
        local firstChar = theStr:byte(currIndex)
        -- from a start byte, determine the length of the utf8 char
        if firstChar < 0x80 then return 1
        elseif firstChar < 0xc0 then return 100 -- invalid utf8 start byte
        elseif firstChar < 0xe0 then return 2
        elseif firstChar < 0xf0 then return 3
        elseif firstChar < 0xf8 then return 4
        elseif firstChar < 0xfc then return 5
        else return 6
        end
    end

    return function()
        if currIndex > #theStr then
            return
        end
        local nextLen = charLen()

        -- skip any invalid start codes
        if nextLen == 100 then
            currIndex = currIndex + 1
            return malformed
        end
        
        local charStart = currIndex
        local charEnd = charStart + nextLen - 1
        
        currIndex = currIndex + nextLen
        
        if charEnd <= #theStr then        
            local char = theStr:sub(charStart,charEnd)
            return char
        end
        
    end
        
end

return UTF8
