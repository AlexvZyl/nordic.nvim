local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.CmpItemAbbrDeprecated = { fg = C.grey4 }
    G.CmpItemAbbrMatch = { fg = C.blue1, bold = true }
    G.CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' }
    G.CmpItemKindField = { link = '@field' }
    G.CmpItemKindProperty = { link = '@property' }
    G.CmpItemKindEvent = { link = 'Type' }
    G.CmpItemKindText = { fg = C.grey4 }
    G.CmpItemKindEnum = { link = 'Type' }
    G.CmpItemKindKeyword = { link = 'Keyword' }
    G.CmpItemKindConstant = { link = 'Constant' }
    G.CmpItemKindConstructor = { link = 'Function' }
    G.CmpItemKindReference = { fg = C.cyan.base }
    G.CmpItemKindFunction = { link = 'Function' }
    G.CmpItemKindStruct = { link = 'Type' }
    G.CmpItemKindClass = { link = 'Type' }
    G.CmpItemKindModule = { fg = C.yellow.dim }
    G.CmpItemKindOperator = { link = 'Operator' }
    G.CmpItemKindVariable = { fg = C.cyan.base }
    G.CmpItemKindFile = { fg = C.blue1 }
    G.CmpItemKindUnit = { link = 'Constant' }
    G.CmpItemKindSnippet = { fg = C.blue1 }
    G.CmpItemKindFolder = { fg = C.yellow.dark }
    G.CmpItemKindMethod = { link = 'Function' }
    G.CmpItemKindValue = { link = 'Constant' }
    G.CmpItemKindEnumMember = { link = 'Type' }
    G.CmpItemKindInterface = { link = 'Type' }
    G.CmpItemKindColor = { link = 'Constant' }
    G.CmpItemKindTypeParameter = { link = 'Type' }
    G.CmpItemKindTabNine = { fg = C.red.base }
    G.CmpItemKindCopilot = { fg = C.red.base }

    return G
end

return M
