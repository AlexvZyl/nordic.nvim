local c = require 'nordic.colors'

return {

    CmpItemAbbrDeprecated = { fg = c.grey4},
    CmpItemAbbrMatch = { fg = c.yellow.bright, bold = true },
    CmpItemAbbrMatchFuzzy = { fg = c.yellow.bright, bold = true },

    CmpItemKindField = { link = '@field' },
    CmpItemKindProperty = { link = '@proprty' },
    CmpItemKindEvent = { link = 'Type' },

    CmpItemKindText = { fg = c.grey4 },
    CmpItemKindEnum = { link = 'Type' },
    CmpItemKindKeyword = { link = 'Keyword' },

    CmpItemKindConstant = { link  = 'Constant' },
    CmpItemKindConstructor = { link = 'Function'},
    CmpItemKindReference = { link = 'Variable' },

    CmpItemKindFunction = { link = 'Function' },
    CmpItemKindStruct = { link = 'Type' },
    CmpItemKindClass = { link = 'Type' },
    CmpItemKindModule = { link = 'Macro' },
    CmpItemKindOperator = { link = 'Operator' },

    CmpItemKindVariable = { link = '@variable' },
    CmpItemKindFile = { fg = c.blue1 },

    CmpItemKindUnit = { link = 'Constant' },
    CmpItemKindSnippet = { },
    CmpItemKindFolder = { fg = c.yellow.dark },

    CmpItemKindMethod = { link = 'Function' },
    CmpItemKindValue = { link = 'Constant' },
    CmpItemKindEnumMember = { link = 'Type' },

    CmpItemKindInterface = { link = 'Type' },
    CmpItemKindColor = { link = 'Constant' },
    CmpItemKindTypeParameter = { link = 'Type' },

}
