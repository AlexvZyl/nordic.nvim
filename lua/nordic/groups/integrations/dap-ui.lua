local c = require 'nordic.colors'

return {

    DapUINormal = { bg = c.black1 },

    DapUIStop = { fg = c.red.bright, bold = true },
    DapUIRestart = { fg = c.green.bright, bold = true },
    DapUIPlayPause = { fg = c.green.bright, bold = true },
    DapUIStepInto = { fg = c.blue2, bold = true },
    DapUIStepOver = { fg = c.blue2, bold = true },
    DapUIStepOut = { fg = c.blue2, bold = true },
    DapUIStepBack = { fg = c.blue3, bold = true },

    DapUIValue = { fg = c.magenta.bright },
    DapUIWatchesValue = { fg = c.green.bright },
    DapUIType = { fg = c.yellow.base },

    DapUIFloatBorder = { fg = c.border_nb, bg = c.bg },
    DapUIFloatNormal = { bg = c.bg },
    DapUILineNumber = { fg = c.green.bright },

    -- ???
    DapUIBreakpointsInfo = { fg = c.red.bright },
    DapUIBreakpointsLine = { fg = c.red.bright },
    DapUIBreakpointsPath = { fg = c.red.bright },
    DapUIBreakpointsCurrentLine = { fg = c.red.bright },
    DapUIBreakpointsDisabledLine = { fg = c.red.bright },

}
