local C = require 'nordic.colors'

local groups = {

    -- LSP
    NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true },
    NoiceLspProgressClient = { fg = C.gray4, bg = C.bg },
    NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg },

    NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black0 },
    NoiceFormatProgressTodo = { bg = C.gray5, fg = C.black0 },

    -- Cmdline
    NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.base },
    NoiceCmdlinePopupBorder = { bg = C.bg, fg = C.cyan.base },
    NoiceCmdlinePopup = { bg = C.bg },

    -- Search bar
    NoiceCmdline = { bg = C.bg_dark, fg = C.fg },
    NoiceCmdlinePopupBorderSearch = { bg = C.bg_dark },
    NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base },

    NoicePopupBorder = { fg = C.border_float_fg, bg = C.border_float_bg },
}

return groups
