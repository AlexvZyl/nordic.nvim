local u = require 'nordic.utils'
local o = require('nordic.config').options
local palette = require('nordic.colors.' .. o.theme)

-- Add these for international convenience :)
palette.grey0 = palette.gray0
palette.grey1 = palette.gray1
palette.grey2 = palette.gray2
palette.grey3 = palette.gray3
palette.grey4 = palette.gray4
palette.grey5 = palette.gray5

-- Now define some use cases.
-- Some of the format is from @folke/tokyonight.nvim.

-- Backgrounds.
palette.bg = palette.gray0
palette.bg_dark = palette.black
palette.bg_highlight = palette.black
palette.bg_visual = palette.bg_highlight
palette.bg_sidebar = palette.bg
palette.bg_float = palette.bg
palette.bg_popup = palette.bg
palette.bg_search = palette.gray1
palette.bg_statusline = palette.bg_dark
palette.bg_selected = palette.gray1
palette.bg_fold = palette.gray2

-- Foregrounds.
palette.fg = palette.white0
palette.fg_bright = palette.white1
palette.fg_dark = palette.white0
palette.fg_sidebar = palette.gray2
palette.fg_fold = palette.fg
palette.fg_float = palette.fg_bright
palette.fg_selected = palette.fg_bright

-- Borders.
palette.border = palette.black
palette.border_float = palette.white1
palette.border_nb = palette.orange.base

-- Diffs.
local diff_blend = 0.35
palette.diff = {}
palette.diff.add = u.blend(palette.green.base, palette.bg, diff_blend)
palette.diff.change0 = u.blend(palette.blue2, palette.bg, diff_blend * 0.15)
palette.diff.change1 = u.blend(palette.blue2, palette.bg, diff_blend)
palette.diff.delete = u.blend(palette.red.base, palette.bg, diff_blend)

-- Git.
palette.git = {}
palette.git.add = palette.green.base
palette.git.delete = palette.red.base
palette.git.change = palette.blue1

-- Diagnostics.
palette.error = palette.red.bright
palette.warn = palette.yellow.base
palette.warning = palette.warn
palette.hint = palette.green.bright
palette.info = palette.blue2

-- Misc.
palette.comment = palette.gray4

if o.cursorline.theme == 'light' then
    palette.bg_highlight = palette.gray1
    palette.bg_visual = palette.gray1
end

return palette
