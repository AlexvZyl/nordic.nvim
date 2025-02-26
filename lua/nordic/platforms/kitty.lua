local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    return U.template(
        [[
# Nordic Colorscheme for Kitty.
# Based on https://github.com/AlexvZyl/nordic.nvim.
# Author: @AlexvZyl.

foreground            ${fg}
background            ${bg}
selection_foreground  ${white0}
selection_background  ${gray1}
url_color             ${blue2}
cursor                ${white0}

# black
color0   ${black0}
color8   ${gray2}

# red
color1   ${red.base}
color9   ${red.bright}

# green
color2   ${green.base}
color10  ${green.bright}

# yellow
color3   ${yellow.base}
color11  ${yellow.bright}

# blue
color4  ${blue0}
color12 ${blue2}

# magenta
color5   ${magenta.base}
color13  ${magenta.bright}

# cyan
color6   ${cyan.base}
color14  ${cyan.bright}

# white
color7   ${white0}
color15  ${white1}
]],
        colors
    )
end

return M
