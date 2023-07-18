local C = require 'nordic.colors'

return {

    CmpItemAbbrDeprecated = { fg = C.grey4 },
    CmpItemAbbrMatch = { fg = C.blue1, bold = true },
    CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },

    CmpItemKindField = { link = '@field' },
    CmpItemKindProperty = { link = '@proprty' },
    CmpItemKindEvent = { link = 'Type' },

    CmpItemKindText = { fg = C.grey4 },
    CmpItemKindEnum = { link = 'Type' },
    CmpItemKindKeyword = { link = 'Keyword' },

    CmpItemKindConstant = { link = 'Constant' },
    CmpItemKindConstructor = { link = 'Function' },
    CmpItemKindReference = { fg = C.cyan.base },

    CmpItemKindFunction = { link = 'Function' },
    CmpItemKindStruct = { link = 'Type' },
    CmpItemKindClass = { link = 'Type' },
    CmpItemKindModule = { fg = C.yellow.dim },
    CmpItemKindOperator = { link = 'Operator' },

    CmpItemKindVariable = { fg = C.cyan.base },
    CmpItemKindFile = { fg = C.blue1 },

    CmpItemKindUnit = { link = 'Constant' },
    CmpItemKindSnippet = { fg = C.blue1 },
    CmpItemKindFolder = { fg = C.yellow.dark },

    CmpItemKindMethod = { link = 'Function' },
    CmpItemKindValue = { link = 'Constant' },
    CmpItemKindEnumMember = { link = 'Type' },

    CmpItemKindInterface = { link = 'Type' },
    CmpItemKindColor = { link = 'Constant' },
    CmpItemKindTypeParameter = { link = 'Type' },

    CmpItemKindTabNine = { fg = C.red.base },
    CmpItemKindCopilot = { fg = C.red.base },

    SpecialCmpBorder = { fg = C.bg, bg = C.bg_float }
}
