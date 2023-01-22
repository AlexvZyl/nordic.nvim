-- The Nord palette: https://www.nordtheme.com/.

local palette = {

    none = "NONE",

    -- Darker colors.
    -- Not in base Nord.
    black = "#191C24",
    -- This color is actually used on their website's dark theme.
    gray0 = "#242933",

    -- Polar Night.
    gray1 = "#2E3440",
    gray2 = "#3B4252",
    gray3 = "#434C5E",
    gray4 = "#4C566A",

    -- A light blue/gray (nice for comments).
    -- From @nightfox.nvim.
    gray5 = "#60728A",

    -- Dim white.
    -- From @nightfox.nvim.
    white0 = "#BBC3D4",

    -- Snow storm.
    white1 = "#D8DEE9",
    white2 = "#E5E9F0",
    white3 = "#ECEFF4",

    -- Frost.
    -- Bright & dim @nightfox.nvim.
    blue0 = "#5E81AC",
    blue1 = "#81A1C1",
    blue2 = "#88C0D0",
    cyan  = {
        base = "#8FBCBB",
        bright = "#93CCDC",
        dim = "#69A7BA",
    },

    -- Aurora.
    -- These colors are used a lot, so we need variations for them.
    -- Base colors are from original Nord palette.
    -- Bright & dim from @nightfox.nvim.
    red = {
        base = "#BF616A",
        bright = "#D06F79",
        dim = "#A54E56",
    },
    orange = {
        base = "#D08770",
        bright = "#D89079",
        dim = "#B46950",
    },
    yellow = {
        base = "#EBCB8B",
        bright = "#F0D399",
        dim = "#D9B263",
    },
    green = {
        base = "#A3BE8C",
        bright = "#B1D196",
        dim = "#8AA872",
    },
    magenta = {
        base = "#B48EAD",
        bright = "#C895BF",
        dim = "#9D7495",
    },
    -- From @nightfox.nvim.
    blue = {
        base = "#81A1C1",
        bright = "#8CAFD2",
        dim = "#668AAB",
    }

}

-- Now define some use cases.
-- Some of the format is from @folke/tokyonight.nvim.

-- Backgrounds.
palette.bg = palette.gray0
palette.bg_highlight = palette.black
palette.bg_dark = palette.black
palette.bg_visual = palette.black
palette.bg_sidebar = palette.bg
palette.bg_float = palette.bg
palette.bg_popup = palette.bg
palette.bg_search = palette.gray1
palette.bg_statusline = palette.black

-- Foregrounds.
palette.fg = palette.white0
palette.fg_dark = palette.white0
palette.fg_sidebar = palette.fg
palette.fg_gutter = palette.gray2
palette.fg_float = palette.white1

-- Borders.
palette.border = palette.black
palette.border_float = palette.white1
palette.border_nb = palette.orange.base

-- Diffs.
palette.diff = {}
palette.diff.add = palette.green.bright
palette.diff.change = palette.blue.bright
palette.diff.text = palette.fg
palette.diff.delete = palette.red.bright

-- Git.
palette.git = {}
palette.git.add = palette.diff.add
palette.git.delete = palette.diff.delete
palette.git.change = palette.diff.change

-- Diagnostics.
palette.error = palette.red.bright
palette.warn = palette.yellow.base
palette.warning = palette.warn
palette.hint = palette.green.bright
palette.info = palette.blue.bright

-- Misc.
palette.comment = palette.gray4

return palette
