local C = require 'nordic.colors'
local O = require('nordic.config').options

local groups = {

    NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true },
    NoiceLspProgressClient = { fg = C.gray4, bg = C.bg },
    NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg },

    NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black },
    NoiceFormatProgressTodo = { bg = C.gray5, fg = C.black },

    NoiceCmdline = { bg = C.bg_dark, fg = C.fg },
    NoiceCmdlineIcon = { bg = C.bg_float, fg = C.yellow.base },
    NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base },

    NoiceCmdlinePopup = { bg = C.black1 },
    NoiceCmdlinePopupBorder = { fg = C.border_float_fg, bg = C.border_float_bg },
    NoiceCmdlinePopupBorderSearch = { link = 'NoiceCmdlinePopupBorder' },

}

if O.noice.style == 'classic' then

    groups.NoiceCmdlinePopupBorder = { bg = C.bg, fg = C.cyan.base }

    groups.NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.bright }
    groups.NoiceCmdlinePopup = { bg = C.bg, fg = C.fg, bold = true }
    groups.NoiceCmdline = { bg = C.bg, fg = C.cyan.base }

end

return groups
