local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    return U.template(
        [[
# Nordic Colorscheme for Ghostty.
# Based on https://github.com/AlexvZyl/nordic.nvim
# Author: @jorgebef

# To use this theme you have 2 options to install it:
#
# - Clone the theme file and set the theme option in your config to the absolute path of the theme file.
# Example:
#
# ```ini
# theme = "/home/jbef/.config/ghostty/nordic"
# ```
#
# - Copy the code directly inside your `ghostty` configuration file, usually located at `$HOME/.config/ghostty/config`

background = ${bg}
foreground = ${fg}
cursor-color = ${white0}
selection-background = ${gray1}
selection-foreground = ${white0}

palette = 0=${black0}
palette = 1=${red.base}
palette = 2=${green.base}
palette = 3=${yellow.base}
palette = 4=${blue0}
palette = 5=${blue2}
palette = 6=${magenta.base}
palette = 7=${white0}

palette = 8=${gray2}
palette = 9=${red.bright}
palette = 10=${green.bright}
palette = 11=${yellow.bright}
palette = 12=${blue2}
palette = 13=${magenta.bright}
palette = 14=${cyan.bright}
palette = 15=${white1}
]],
        colors
    )
end

return M
