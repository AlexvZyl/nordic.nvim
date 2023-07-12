local C = require 'nordic.colors'

return {
    SagaBorder = { fg = C.border_float_fg, bg = C.border_float_bg },
    SagaNormal = { bg = C.black1 },

    RenameBorder = { link = 'SagaBorder' },
    RenameNormal = { bg = C.bg_float, fg = C.yellow.bright },

    DiagnosticPos = { fg = C.fg },
    DiagnosticWord = { fg = C.fg },
    DiagnosticSource = { fg = C.gray4 },
    DiagnosticNormal = { link = 'SagaNormal' },
    DiagnosticShowBorder = { link = 'SagaBorder' },
}
