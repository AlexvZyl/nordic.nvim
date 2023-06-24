local c = require 'nordic.colors'
local o = require('nordic.config').options

local groups = {

    NoiceCmdlinePopupBorder = { bg = c.none, fg = c.cyan.base },
    NoiceCmdlinePopupBorderSearch = { bg = c.none, fg = c.cyan.base },

    NoiceCmdlineIcon = { bg = c.bg, fg = c.yellow.bright },
    NoiceCmdlinePopup = { bg = c.bg, fg = c.fg, bold = true },
    NoiceCmdline = { bg = c.bg, fg = c.cyan.base },

}

if o.noice.style == 'flat' then

    groups.NoiceCmdlinePopupBorder = { bg = c.bg_dark, fg = c.bg_dark }
    groups.NoiceCmdlinePopupBorderSearch = { bg = c.bg_dark, fg = c.bg_dark }

    groups.NoiceCmdlineIcon = { bg = c.bg_dark, fg = c.yellow.base }
    groups.NoiceCmdlinePopup = { bg = c.black }
    groups.NoiceCmdlinePrompt = {}

end

return groups
