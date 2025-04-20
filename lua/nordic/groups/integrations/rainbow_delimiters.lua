local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.RainbowDelimiterOrange = { fg = C.orange.base }
    G.RainbowDelimiterYellow = { fg = C.yellow.bright }
    G.RainbowDelimiterBlue = { fg = C.blue2 }
    G.RainbowDelimiterRed = { fg = C.red.bright }
    G.RainbowDelimiterGreen = { fg = C.green.bright }

    return G
end

return M
