local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.IndentBlanklineChar = { fg = C.gray1 }
    G.IndentBlanklineContextChar = { fg = C.gray2 }
    G.IndentBlanklineContextStart = { sp = C.white0, underline = true }

    return G
end

return M
