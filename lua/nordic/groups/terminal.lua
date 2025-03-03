local M = {}

function M.get_groups()
    local C = require('nordic.colors')

    ---@class TerminalHighlights
    local G = {}

    G.terminal_color_0 = C.black0
    G.terminal_color_8 = C.gray2
    G.terminal_color_1 = C.red.base
    G.terminal_color_9 = C.red.bright
    G.terminal_color_2 = C.green.base
    G.terminal_color_10 = C.green.bright
    G.terminal_color_3 = C.yellow.base
    G.terminal_color_11 = C.yellow.bright
    G.terminal_color_4 = C.blue0
    G.terminal_color_12 = C.blue2
    G.terminal_color_5 = C.magenta.base
    G.terminal_color_13 = C.magenta.bright
    G.terminal_color_6 = C.cyan.base
    G.terminal_color_14 = C.cyan.bright
    G.terminal_color_7 = C.white0
    G.terminal_color_15 = C.white1

    return G
end

return M
