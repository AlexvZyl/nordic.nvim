local U = require 'nordic.utils'
local P = require 'nordic.colors.nordic'

local C = {}

local function build_palette()
    -- make a new palette
    C = vim.deepcopy(P)
    C.build_palette = build_palette

    local options = require('nordic.config').options

    -- `white0` is used as the default fg, and has a blue tint.
    -- Reduce that amount of tint.
    C.white0 = (options.reduced_blue and C.white0_reduce_blue) or C.white0_normal

    -- Modify the palette before generating colors.

    -- This flag allows users to check if the extended palette can be used.
    -- On the first run only the base palette is available.
    C.extended = false
    -- Any changes to the palette made in this run will be overwritten.
    -- However they will be used to setup the extended palette.
    C = options.on_palette(C)

    -- Add these for international convenience :)
    C.grey0 = C.gray0
    C.grey1 = C.gray1
    C.grey2 = C.gray2
    C.grey3 = C.gray3
    C.grey4 = C.gray4
    C.grey5 = C.gray5

    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.

    -- Backgrounds
    C.bg = (options.transparent.bg and C.none) or ((options.swap_backgrounds and C.black1) or C.gray0)
    C.bg_dark = (options.transparent.bg and C.none) or C.black0
    C.bg_sidebar = (options.transparent.bg and C.none) or C.bg
    C.bg_popup = (options.transparent.float and C.none) or C.bg
    C.bg_statusline = C.black0
    C.bg_selected = U.blend(C.gray2, C.black0, 0.4)
    C.bg_fold = C.gray2

    -- Cursorline Background
    if options.cursorline.theme == 'light' then
        options.cursorline.bg = C.gray1
    else
        options.cursorline.bg = C.black0
    end

    C.bg_visual = (options.transparent.bg and options.cursorline.bg)
        or U.blend(options.cursorline.bg, C.bg, options.cursorline.blend)

    -- Borders
    C.border_fg = (options.bright_border and C.white0) or C.black0
    C.border_bg = (options.transparent.bg and C.none) or C.bg

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
    C.fg_popup_border = C.border_fg

    -- Floating windows
    C.bg_float = (options.transparent.float and C.none) or ((options.swap_backgrounds and C.gray0) or C.black1)
    C.fg_float = C.fg
    C.bg_float_border = C.bg_float
    C.fg_float_border = C.border_fg

    -- Diffs
    local diff_blend = 0.2
    C.diff = {
        change0 = U.blend(C.blue1, C.bg, 0.05),
        change1 = U.blend(C.blue2, C.bg, diff_blend),
        add = U.blend(C.green.base, C.bg, diff_blend),
        delete = U.blend(C.red.base, C.bg, diff_blend),
    }

    -- Git
    C.git = {
        add = C.green.base,
        delete = C.red.base,
        change = C.blue1,
    }

    -- Diagnostics
    C.error = C.red.bright
    C.warn = C.yellow.base
    C.warning = C.warn
    C.hint = C.green.bright
    C.info = C.blue2

    -- Misc
    C.comment = C.gray4

    -- Modify the palette after generating the colors.

    -- Now the extended palette is available.
    C.extended = true

    -- Set all values in the base palette back to their defaults.
    -- This means that on_palette will receive the same base palette as the first run & set the values again.
    C = vim.tbl_deep_extend('force', C, P)

    -- This time we already have extended the palette & any changes made will not be overwritten.
    -- So now on_palette will resetup the base palette & change individual colors in the extended one.
    C = options.on_palette(C)
end

-- build the first palette
build_palette()

return C
