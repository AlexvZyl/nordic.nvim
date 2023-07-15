local C = require 'nordic.colors'

return {
    SagaBorder = { bg = C.bg, fg = C.border_float_fg },
    SagaNormal = { link = 'Normal' },

    HoverBorder = { link = 'FloatBorder' },
    HoverNormal = { link = 'NormalFloat' },

    RenameNormal = { bg = C.bg_float, fg = C.yellow.bright },
    RenameBorder = { link = 'FloatBorder' },

    DiagnosticPos = { fg = C.fg },
    DiagnosticWord = { fg = C.fg },
    DiagnosticSource = { fg = C.gray4 },
    DiagnosticNormal = { link = 'NormalFloat' },
    DiagnosticShowNormal = { link = 'NormalFloat' },
    DiagnosticShowBorder = { link = 'FloatBorder' },
    DiagnosticBorder = { link = 'FloatBorder' },
}
