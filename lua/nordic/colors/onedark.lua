-- The ondark palette from NvChad:
-- https://github.com/NvChad/base46/blob/master/lua/base46/themes/onedark.lua.

local o = require('nordic.config').options

local palette = {

    none = 'NONE',

    black = '#191D24',

    -- Grays.
    gray0 = '#1e222a',
    gray1 = '#282c34',
    gray2 = '#353b45',
    gray3 = '#373b43',
    gray4 = '#42464e',
    gray5 = '#6f737b',

    -- Whites.
    white0 = '#abb2bf',
    white1 = '#b6bdca',
    white2 = '#c8ccd4',
    white3 = '#ECEFF4',

    -- Blues.
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

if o.onedark.brighten_whites then
    palette.white0 = '#B9BFCA'
    palette.white1 = '#C4CAD4'
    palette.white2 = '#DDDFE4'
    palette.white3 = '#FFFFFF'
end

return palette
