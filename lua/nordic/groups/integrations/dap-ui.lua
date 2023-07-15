local C = require 'nordic.colors'

return {

    DapUINormal = { bg = C.black1 },

    DapUIStop = { fg = C.red.bright, bold = true },
    DapUIRestart = { fg = C.green.bright, bold = true },
    DapUIPlayPause = { fg = C.green.bright, bold = true },
    DapUIStepInto = { fg = C.blue2, bold = true },
    DapUIStepOver = { fg = C.blue2, bold = true },
    DapUIStepOut = { fg = C.blue2, bold = true },
    DapUIStepBack = { fg = C.blue3, bold = true },

    DapUIValue = { fg = C.magenta.bright },
    DapUIWatchesValue = { fg = C.green.bright },
    DapUIType = { fg = C.yellow.base },

    DapUIFloatBorder = { fg = C.border_nb, bg = C.bg },
    DapUIFloatNormal = { bg = C.bg },
    DapUILineNumber = { fg = C.green.bright },

    DapBreakPoint = { fg = C.red.bright },
}
