local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    return U.template(
        [[
# Nordic Colorscheme for Wezterm.
# Based on https://github.com/AlexvZyl/nordic.nvim
# Author: @kuntau

[colors]
foreground = "${fg}"
background = "${bg}"
cursor_bg = "${white1}"
cursor_border = "${white1}"
cursor_fg = "${gray0}"
selection_fg = "${white1}"
selection_bg = "${gray1}"

ansi = [
  "${black0}",
  "${red.base}",
  "${green.base}",
  "${yellow.base}",
  "${blue0}",
  "${magenta.base}",
  "${cyan.base}",
  "${white0}",
]

brights = [
  "${gray2}",
  "${red.bright}",
  "${green.bright}",
  "${yellow.bright}",
  "${blue2}",
  "${magenta.bright}",
  "${cyan.bright}",
  "${white1}",
]
]],
        colors
    )
end

return M
