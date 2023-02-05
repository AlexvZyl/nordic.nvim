-- The Nord palette: https://www.nordtheme.com/.

local u = require 'nordic.utils'
local o = require('nordic.config').options

local palette = {

    none = 'NONE',

    -- Darker colors.
    -- Not in base Nord.
    black = '#191C24',
    -- This color is actually used on their website's dark theme.
    gray0 = '#242933',

    -- Polar Night.
    gray1 = '#2E3440',
    gray2 = '#3B4252',
    gray3 = '#434C5E',
    gray4 = '#4C566A',

    -- A light blue/gray.
    -- From @nightfox.nvim.
    gray5 = '#60728A',

    -- Dim white.
    -- From @nightfox.nvim.
    white0 = '#BBC3D4',

    -- Snow storm.
    white1 = '#D8DEE9',
    white2 = '#E5E9F0',
    white3 = '#ECEFF4',

    -- Frost.
    -- Bright & dim @nightfox.nvim.
    blue0 = '#5E81AC',
    blue1 = '#81A1C1',
    blue2 = '#88C0D0',
    blue = {
        bright = '#8CAFD2',
        dim = '#668AAB',
    },
    cyan = {
        base = '#8FBCBB',
        bright = '#93CCDC',
        dim = '#69A7BA',
    },

    -- Aurora.
    -- These colors are used a lot, so we need variations for them.
    -- Base colors are from original Nord palette.
    -- Bright & dim from @nightfox.nvim.
    red = {
        base = '#BF616A',
        bright = '#D06F79',
        dim = '#A54E56',
    },
    orange = {
        base = '#D08770',
        bright = '#D89079',
        dim = '#B46950',
    },
    yellow = {
        base = '#EBCB8B',
        bright = '#F0D399',
        dim = '#D9B263',
    },
    green = {
        base = '#A3BE8C',
        bright = '#B1D196',
        dim = '#8AA872',
    },
    magenta = {
        base = '#B48EAD',
        bright = '#C895BF',
        dim = '#9D7495',
    },
}

-- Reduced blue theme.
if o.reduced_blue then palette.white0 = '#CFD5E1' end

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

-- Foregrounds.
palette.fg = palette.white0
palette.fg_bright = palette.white1
palette.fg_dark = palette.white0
palette.fg_sidebar = palette.fg
palette.fg_gutter = palette.gray2
palette.fg_float = palette.fg_bright
palette.fg_selected = palette.fg_bright

-- Borders.
palette.border = palette.black
palette.border_float = palette.white1
palette.border_nb = palette.orange.base

-- Diffs.
local diff_blend = 0.25
palette.diff = {}
palette.diff.add = u.blend(palette.green.base, palette.bg, diff_blend)
palette.diff.change0 = u.blend(palette.blue2, palette.bg, diff_blend * 0.2)
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

return palette
