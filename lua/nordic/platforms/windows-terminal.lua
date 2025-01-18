local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    return U.template(
        [[
{
    "name": "Nordic",
    "cursorColor": "${white0}",
    "selectionBackground": "${gray1}",

    "background": "${bg}",
    "foreground": "${fg}",

    "black": "${black0}",
    "brightBlack": "${gray2}",

    "red": "${red.base}",
    "brightRed": "${red.bright}",

    "green": "${green.base}",
    "brightGreen": "${green.bright}",

    "yellow": "${yellow.base}",
    "brightYellow": "${yellow.bright}",

    "blue": "${blue0}",
    "brightBlue": "${blue2}",

    "purple": "${magenta.base}",
    "brightPurple": "${magenta.bright}",

    "cyan": "${cyan.base}",
    "brightCyan": "${cyan.bright}",

    "white": "${white0}",
    "brightWhite": "${white1}",
}
]],
        colors
    )
end

return M
