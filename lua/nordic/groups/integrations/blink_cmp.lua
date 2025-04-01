local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    -- G.BlinkCmpDoc = { fg = spec.fg1, bg = spec.bg0 }
    -- G.BlinkCmpDocBorder = { fg = spec.sel0, bg = spec.bg0 }

    -- G.BlinkCmpLabel = { fg = spec.fg1 }
    G.BlinkCmpLabelDeprecated = { fg = C.grey4, strikethrough = true }
    G.BlinkCmpLabelMatch = { fg = C.blue1, bold = true }
    -- G.CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' }

    -- G.BlinkCmpKindDefault = { fg = spec.fg2 }
    -- G.BlinkCmpLabelDetail = { link = 'Comment' }

    G.BlinkCmpKindKeyword = { link = 'Keyword' }

    G.BlinkCmpKindVariable = { fg = C.cyan.base }
    G.BlinkCmpKindConstant = { link = 'Constant' }
    G.BlinkCmpKindReference = { fg = C.cyan.base }
    G.BlinkCmpKindValue = { link = 'Constant' }

    G.BlinkCmpKindFunction = { link = 'Function' }
    G.BlinkCmpKindMethod = { link = 'Function' }
    G.BlinkCmpKindConstructor = { link = 'Function' }

    G.BlinkCmpKindInterface = { link = 'Type' }
    G.BlinkCmpKindEvent = { link = 'Type' }
    G.BlinkCmpKindEnum = { link = 'Type' }
    G.BlinkCmpKindUnit = { link = 'Constant' }

    G.BlinkCmpKindClass = { link = 'Type' }
    G.BlinkCmpKindStruct = { link = 'Type' }

    G.BlinkCmpKindModule = { fg = C.yellow.dim }

    G.BlinkCmpKindProperty = { link = '@property' }
    G.BlinkCmpKindField = { link = '@field' }
    G.BlinkCmpKindTypeParameter = { link = 'Type' }
    G.BlinkCmpKindEnumMember = { link = 'Type' }
    G.BlinkCmpKindOperator = { link = 'Operator' }
    G.BlinkCmpKindSnippet = { fg = C.blue1 }

    G.BlinkItemKindText = { fg = C.grey4 }
    G.BlinkItemKindKeyword = { link = 'Keyword' }
    G.BlinkItemKindFile = { fg = C.blue1 }
    G.BlinkItemKindFolder = { fg = C.yellow.dark }
    G.BlinkItemKindColor = { link = 'Constant' }
    G.BlinkItemKindTabNine = { fg = C.red.base }
    G.BlinkItemKindCopilot = { fg = C.red.base }

    return G
end

return M
