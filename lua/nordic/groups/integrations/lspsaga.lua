local C = require 'nordic.colors'

return {

    SagaBorder = { fg = C.black, bg = C.black1 },
    SagaNormal = { bg = C.black1 },

    DefinitionBorder = { bg = C.bg, fg = C.black },
    DefinitionNormal = { link = 'Normal' },

    DiagnosticPos = { fg = C.fg },
    DiagnosticWord = { fg = C.fg },
    DiagnosticSource = { fg = C.gray4 },
    DiagnosticNormal = { link = 'Normal' },
    DiagnosticShowBorder = { fg = C.black , bg = C.black1 }

}
