local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.TroubleNormal = { bg = C.bg_float }
    G.TroubleText = { fg = C.fg }
    G.TroubleCount = { fg = C.white1, bg = C.gray2 }
    G.TroubleIndent = { fg = C.gray1 }
    G.TroubleFile = { fg = C.cyan.bright }
    G.TroubleFoldIcon = { fg = C.gray1 }

    return G
end

return M
