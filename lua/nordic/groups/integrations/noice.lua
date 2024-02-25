local C = require 'nordic.colors'
local O = require('nordic.config').options

local groups = {

    NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true },
    NoiceLspProgressClient = { fg = C.gray4, bg = C.bg },
    NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg },

    NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black0 },
    NoiceFormatProgressTodo = { bg = C.gray5, fg = C.black0 },

    NoiceCmdline = { bg = C.bg_dark, fg = C.fg },
    NoiceCmdlineIcon = { bg = C.bg_float, fg = C.yellow.base },
    NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base },

    NoicePopupBorder = { fg = C.black0, bg = C.bg_float },
    NoiceCmdlinePopupBorder = { link = 'NoicePopupBorder' },
    NoiceCmdlinePopupBorderSearch = { link = 'NoicePopupBorder' },
    NoiceCmdlinePopup = { bg = C.bg_float },
}

if O.noice.style == 'classic' then
    groups.NoiceCmdline = { bg = C.bg, fg = C.cyan.base }
    groups.NoiceCmdlinePopup = { bg = C.bg }
    groups.NoicePopupBorder = { bg = C.bg, fg = C.cyan.base }
    groups.NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.bright }
end

return groups
