local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.CmpItemAbbrDeprecated = { fg = C.grey4, strikethrough = true }
    G.CmpItemAbbrMatch = { fg = C.blue1, bold = true }
    G.CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' }

    G.CmpItemKindClass = { link = 'CmpKindClass' }
    G.CmpItemKindColor = { link = 'CmpKindColor' }
    G.CmpItemKindConstant = { link = 'CmpKindConstant' }
    G.CmpItemKindConstructor = { link = 'CmpKindConstructor' }
    G.CmpItemKindCopilot = { link = 'CmpKindCopilot' }
    G.CmpItemKindEnum = { link = 'CmpKindEnum' }
    G.CmpItemKindEnumMember = { link = 'CmpKindEnumMember' }
    G.CmpItemKindEvent = { link = 'CmpKindEvent' }
    G.CmpItemKindField = { link = 'CmpKindField' }
    G.CmpItemKindFile = { link = 'CmpKindFile' }
    G.CmpItemKindFolder = { link = 'CmpKindFolder' }
    G.CmpItemKindFunction = { link = 'CmpKindFunction' }
    G.CmpItemKindInterface = { link = 'CmpKindInterface' }
    G.CmpItemKindKeyword = { link = 'CmpKindKeyword' }
    G.CmpItemKindMethod = { link = 'CmpKindMethod' }
    G.CmpItemKindModule = { link = 'CmpKindModule' }
    G.CmpItemKindOperator = { link = 'CmpKindOperator' }
    G.CmpItemKindProperty = { link = 'CmpKindProperty' }
    G.CmpItemKindReference = { link = 'CmpKindReference' }
    G.CmpItemKindSnippet = { link = 'CmpKindSnippet' }
    G.CmpItemKindStruct = { link = 'CmpKindStruct' }
    G.CmpItemKindTabNine = { link = 'CmpKindTabNine' }
    G.CmpItemKindText = { link = 'CmpKindText' }
    G.CmpItemKindTypeParameter = { link = 'CmpKindTypeParameter' }
    G.CmpItemKindUnit = { link = 'CmpKindUnit' }
    G.CmpItemKindValue = { link = 'CmpKindValue' }
    G.CmpItemKindVariable = { link = 'CmpKindVariable' }

    return G
end

return M
