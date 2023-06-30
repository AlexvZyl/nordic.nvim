local c = require 'nordic.colors'

return {

    SagaBorder = { fg = c.black, bg = c.black1 },
    SagaNormal = { bg = c.black1 },

    DefinitionBorder = { bg = c.bg, fg = c.black },
    DefinitionNormal = { link = 'Normal' },

    DiagnosticPos = { fg = c.fg },
    DiagnosticWord = { fg = c.fg },
    DiagnosticSource = { fg = c.gray4 },
    DiagnosticNormal = { link = 'Normal' },
    DiagnosticShowBorder = { fg = c.black , bg = c.black1 }

}
