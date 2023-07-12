local U = require 'nordic.utils'
local O = require('nordic.config').options
local C = require 'nordic.colors.nordic'

function C.extend_palette()
    local diff_blend = 0.2

    -- Add these for international convenience :)
    C.grey0 = C.gray0
    C.grey1 = C.gray1
    C.grey2 = C.gray2
    C.grey3 = C.gray3
    C.grey4 = C.gray4
    C.grey5 = C.gray5

    -- Blacks
    C.black0 = C.black
    C.black1 = U.blend(C.black, C.gray0, 0.6)

    -- Swap background
    if O.swap_backgrounds then
        local gray0 = C.gray0
        C.gray0 = C.black1
        C.black1 = gray0
    end

    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.

    -- Backgrounds
    C.bg = C.gray0
    C.bg_dark = C.black0

    C.bg_highlight = C.bg_dark
    C.bg_highlight = U.blend(C.bg_dark, C.bg, O.cursorline.blend)
    C.bg_visual = C.bg_highlight
    C.bg_sidebar = C.bg
    C.bg_float = C.black1
    C.bg_popup = C.black1
    C.bg_search = C.gray1
    C.bg_statusline = C.bg_dark
    C.bg_selected = C.gray1
    C.bg_fold = C.gray2

    -- Foregrounds
    C.fg = C.white0
    C.fg_bright = C.white1
    C.fg_dark = C.white0
    C.fg_sidebar = C.gray2
    C.fg_fold = C.fg
    C.fg_float = C.fg
    C.fg_selected = C.fg_bright

    -- Borders
    C.border_fg = (O.bright_border and C.white0) or C.black0
    C.border_bg = C.bg
    C.border_float_fg = C.border_fg
    C.border_float_bg = C.bg_popup

    -- Diffs
    C.diff = {}
    C.diff.change0 = U.blend(C.blue1, C.bg, 0.05)
    C.diff.change1 = U.blend(C.blue2, C.bg, diff_blend)
    C.diff.add = U.blend(C.green.base, C.bg, diff_blend)
    C.diff.delete = U.blend(C.red.base, C.bg, diff_blend)

    -- Git
    C.git = {}
    C.git.add = C.green.base
    C.git.delete = C.red.base
    C.git.change = C.blue1

    -- Diagnostics
    C.error = C.red.bright
    C.warn = C.yellow.base
    C.warning = C.warn
    C.hint = C.green.bright
    C.info = C.blue2

    -- Misc
    C.comment = C.gray4

    -- Cursorline
    if O.cursorline.theme == 'light' then
        C.bg_highlight = U.blend(C.gray1, C.bg, O.cursorline.blend)
        C.bg_visual = C.bg_highlight
    end
end

return C
