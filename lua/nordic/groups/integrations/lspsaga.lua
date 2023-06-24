local c = require 'nordic.colors'

return {

    SagaBorder = { fg = c.border_float, bg = c.bg_dark },
    SagaNormal = { bg = c.bg_dark },

    DefinitionBorder = { bg = c.bg, fg = c.black },
    DefinitionNormal = { link = 'Normal' },

    DiagnosticPos = { fg = c.fg },
    DiagnosticWord = { fg = c.fg },
    DiagnosticSource = { fg = c.gray4 },
    DiagnosticNormal = { link = 'Normal' },

}
