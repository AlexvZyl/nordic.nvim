local C = require 'nordic.colors'

return {
    MiniStatuslineModeNormal = {
        bg = C.orange.bright,
        fg = C.black,
        bold = true,
    },
    MiniStatuslineModeInsert = {
        bg = C.green.bright,
        fg = C.black,
        bold = true,
    },
    MiniStatuslineModeVisual = {
        bg = C.red.bright,
        fg = C.black,
        bold = true,
    },
    MiniStatuslineModeReplace = {
        bg = C.magenta.bright,
        fg = C.black,
        bold = true,
    },
    MiniStatuslineModeCommand = {
        bg = C.cyan.bright,
        fg = C.black,
        bold = true,
    },
    MiniStatuslineModeOther = {
        bg = C.blue2,
        fg = C.black,
        bold = true,
    },

    MiniStatuslineDevinfo = {
        bg = C.gray1,
        fg = C.white1,
    },
    MiniStatuslineFilename = {
        bg = C.bg_statusline,
        fg = C.white0,
    },
    MiniStatuslineFileinfo = {
        bg = C.bg_statusline,
        fg = C.white0,
    },

    MiniStatuslineInactive = {
        bg = C.gray2,
        fg = C.black,
        bold = true,
    },
}
