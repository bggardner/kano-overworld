--[[
dialogueDataTemplates.lua

Copyright (C) 2016 Kano Computing Ltd.
License: http://www.gnu.org/licenses/gpl-2.0.txt GNU GPLv2

Functions for creating dialogue data at load time.

This probably needs refactoring, but at least it is here
where the rest of the dialogue code lives.

]]--


local DialogueDataTemplates = {}
DialogueDataTemplates.__index = DialogueDataTemplates

function DialogueDataTemplates:momaPlaque(title, username, date)
    return {
        type = 'repeat',
        dialogues = {{
                rawCopy =  title .. "\n" .. username .. "\n" .. date,
                rawCopyKey = '',
                copy = {},
                options = {},
                arguments = {},

        }}
    }
end
return DialogueDataTemplates
