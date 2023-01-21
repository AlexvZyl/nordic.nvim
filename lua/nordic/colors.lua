-- The Nord palette: https://www.nordtheme.com/.

local palette = {

    -- Darker colors.
    -- Not in base Nord.
    black = "#191C24",
    gray0 = "#242933",

    -- Polar Night.
    gray1 = "#2E3440",
    gray2 = "#3B4252",
    gray3 = "#434C5E",
    gray4 = "#4C566A",

    -- A light blue/gray (nice for comments).
    -- @nightfox.nvim.
    gray5 = "#60728A",

    -- Dim white.
    -- @nightfox.nvim.
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
    -- Bright & dim @nightfox.nvim.
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
    }

}

-- Now define some use cases.
palette.bg = palette.gray0
palette.bg_alt = palette.black
palette.fg = palette.white0
palette.fg_alt = palette.white1
palette.comment = palette.gray5
palette.border = palette.white1
palette.border_alt = palette.gray4
palette.border_nb = palette.cyan

return palette
