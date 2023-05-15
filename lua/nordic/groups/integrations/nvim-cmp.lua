local c = require 'nordic.colors'

return {

    CmpItemAbbrDeprecated = { fg = c.grey4 },
    CmpItemAbbrMatch = { fg = c.blue1, bold = true },
    CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },

    CmpItemKindField = { link = '@field' },
    CmpItemKindProperty = { link = '@proprty' },
    CmpItemKindEvent = { link = 'Type' },

    CmpItemKindText = { fg = c.grey4 },
    CmpItemKindEnum = { link = 'Type' },
    CmpItemKindKeyword = { link = 'Keyword' },

    CmpItemKindConstant = { link  = 'Constant' },
    CmpItemKindConstructor = { link = 'Function'},
    CmpItemKindReference = { fg = c.cyan.base },

    CmpItemKindFunction = { link = 'Function' },
    CmpItemKindStruct = { link = 'Type' },
    CmpItemKindClass = { link = 'Type' },
    CmpItemKindModule = { fg = c.yellow.dim },
    CmpItemKindOperator = { link = 'Operator' },

    CmpItemKindVariable = { fg = c.cyan.base },
    CmpItemKindFile = { fg = c.blue1 },

    CmpItemKindUnit = { link = 'Constant' },
    CmpItemKindSnippet = { fg = c.blue1 },
    CmpItemKindFolder = { fg = c.yellow.dark },

    CmpItemKindMethod = { link = 'Function' },
    CmpItemKindValue = { link = 'Constant' },
    CmpItemKindEnumMember = { link = 'Type' },

    CmpItemKindInterface = { link = 'Type' },
    CmpItemKindColor = { link = 'Constant' },
    CmpItemKindTypeParameter = { link = 'Type' },

}
