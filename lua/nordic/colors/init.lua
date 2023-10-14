local U = require 'nordic.utils'
local O = require('nordic.config').options
local C = require 'nordic.colors.nordic'

function C.extend_palette()
    -- Modify the palette before generating colors.
    C = O.on_palette(C)

    local diff_blend = 0.2

    -- Add these for international convenience :)
    C.grey0 = C.gray0
    C.grey1 = C.gray1
    C.grey2 = C.gray2
    C.grey3 = C.gray3
    C.grey4 = C.gray4
    C.grey5 = C.gray5

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
    C.bg_popup = C.bg
    C.bg_statusline = C.bg_dark
    C.bg_selected = U.blend(C.gray2, C.black0, 0.4)
    C.bg_fold = C.gray2

    -- Foregrounds
    C.fg = C.white0
    C.fg_bright = C.white1
    C.fg_dark = C.white0
    C.fg_sidebar = C.gray2
    C.fg_fold = C.fg
    C.fg_selected = C.fg_bright

    -- Popups
    C.bg_popup = C.bg
    C.fg_popup = C.fg
    C.bg_popup_border = C.bg
    C.fg_popup_border =  C.black0

    -- Floating windows
    C.bg_float = C.black1
    C.fg_float = C.fg
    C.bg_float_border = C.bg_float
    C.fg_float_border = C.border_fg

    -- Borders
    C.border_fg = (O.bright_border and C.white0) or C.black0
    C.border_bg = C.bg

    -- Diffs
    C.diff = {
        change0 = U.blend(C.blue1, C.bg, 0.05),
        change1 = U.blend(C.blue2, C.bg, diff_blend),
        add = U.blend(C.green.base, C.bg, diff_blend),
        delete = U.blend(C.red.base, C.bg, diff_blend)
    }

    -- Git
    C.git = {
        add = C.green.base,
        delete = C.red.base,
        change = C.blue1
    }

    -- Diagnostics
    C.error = C.red.bright
    C.warn = C.yellow.base
    C.warning = C.warn
    C.hint = C.green.bright
    C.info = C.blue2

    -- Cursorline
    if O.cursorline.theme == 'light' then
        C.bg_highlight = U.blend(C.gray1, C.bg, O.cursorline.blend)
        C.bg_visual = C.bg_highlight
    end
end

return C
