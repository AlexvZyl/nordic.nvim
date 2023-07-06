local c = require 'nordic.colors'
local o = require('nordic.config').options

local groups = {

    NoiceLspProgressTitle = { fg = c.yellow.base, bg = c.bg, bold = true },
    NoiceLspProgressClient = { fg = c.gray4, bg = c.bg },
    NoiceLspProgressSpinner = { fg = c.cyan.bright, bg = c.bg },

    NoiceFormatProgressDone = { bg = c.green.bright, fg = c.black },
    NoiceFormatProgressTodo = { bg = c.gray5, fg = c.black },

    NoiceCmdline = { bg = c.bg_dark, fg = c.fg },
    NoiceCmdlineIcon = { bg = c.bg_float, fg = c.yellow.base },
    NoiceCmdlineIconSearch = { bg = c.bg_dark, fg = c.yellow.base },

    NoiceCmdlinePopup = { bg = c.black },
    NoiceCmdlinePopupBorder = { fg = c.border_float_fg, bg = c.border_float_bg },
    NoiceCmdlinePopupBorderSearch = { link = 'NoiceCmdlinePopupBorder' },

}

if o.noice.style == 'classic' then

    groups.NoiceCmdlinePopupBorder = { bg = c.bg, fg = c.cyan.base }

    groups.NoiceCmdlineIcon = { bg = c.bg, fg = c.yellow.bright }
    groups.NoiceCmdlinePopup = { bg = c.bg, fg = c.fg, bold = true }
    groups.NoiceCmdline = { bg = c.bg, fg = c.cyan.base }

end

return groups
