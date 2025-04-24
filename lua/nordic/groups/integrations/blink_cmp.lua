local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    -- G.BlinkCmpMenuBorder = '???'
    -- G.BlinkCmpDocBorder = '???'

    G.BlinkCmpLabel = { fg = C.fg }
    G.BlinkCmpLabelDeprecated = { fg = C.grey4, strikethrough = true }
    G.BlinkCmpLabelMatch = { fg = C.blue1, bold = true }

    G.BlinkCmpLabelDescription = { link = 'Comment' }
    G.BlinkCmpDoc = { fg = C.fg_float, bg = C.bg_float }

    G.BlinkCmpKindClass = { link = 'CmpKindClass' }
    G.BlinkCmpKindColor = { link = 'CmpKindColor' }
    G.BlinkCmpKindConstant = { link = 'CmpKindConstant' }
    G.BlinkCmpKindConstructor = { link = 'CmpKindConstructor' }
    G.BlinkCmpKindCopilot = { link = 'CmpKindCopilot' }
    G.BlinkCmpKindEnum = { link = 'CmpKindEnum' }
    G.BlinkCmpKindEnumMember = { link = 'CmpKindEnumMember' }
    G.BlinkCmpKindEvent = { link = 'CmpKindEvent' }
    G.BlinkCmpKindField = { link = 'CmpKindField' }
    G.BlinkCmpKindFile = { link = 'CmpKindFile' }
    G.BlinkCmpKindFolder = { link = 'CmpKindFolder' }
    G.BlinkCmpKindFunction = { link = 'CmpKindFunction' }
    G.BlinkCmpKindInterface = { link = 'CmpKindInterface' }
    G.BlinkCmpKindKeyword = { link = 'CmpKindKeyword' }
    G.BlinkCmpKindMethod = { link = 'CmpKindMethod' }
    G.BlinkCmpKindModule = { link = 'CmpKindModule' }
    G.BlinkCmpKindOperator = { link = 'CmpKindOperator' }
    G.BlinkCmpKindProperty = { link = 'CmpKindProperty' }
    G.BlinkCmpKindReference = { link = 'CmpKindReference' }
    G.BlinkCmpKindSnippet = { link = 'CmpKindSnippet' }
    G.BlinkCmpKindStruct = { link = 'CmpKindStruct' }
    G.BlinkCmpKindTabNine = { link = 'CmpKindTabNine' }
    G.BlinkCmpKindText = { link = 'CmpKindText' }
    G.BlinkCmpKindTypeParameter = { link = 'CmpKindTypeParameter' }
    G.BlinkCmpKindUnit = { link = 'CmpKindUnit' }
    G.BlinkCmpKindValue = { link = 'CmpKindValue' }
    G.BlinkCmpKindVariable = { link = 'CmpKindVariable' }

    return G
end

return M
