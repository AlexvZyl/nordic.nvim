local C = require 'nordic.colors'

return {

    SagaBorder = { fg = C.border_float_fg, bg = C.border_float_bg },
    SagaNormal = { bg = C.black1 },

    DefinitionBorder = { fg = C.border_float_fg, bg = C.bg },
    DefinitionNormal = { link = 'Normal' },

    DiagnosticPos = { fg = C.fg },
    DiagnosticWord = { fg = C.fg },
    DiagnosticSource = { fg = C.gray4 },
    DiagnosticNormal = { link = 'Normal' },
    DiagnosticShowBorder = { fg = C.black , bg = C.black1 }

}
