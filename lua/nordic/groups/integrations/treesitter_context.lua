local M = {}

function M.get()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    local G = {}

    local bg
    local fg
    if O.ts_context.dark_background then
        bg = C.black1
        fg = C.gray1
    else
        bg = C.gray1
        fg = C.gray4
    end
    G.TreesitterContext = { bg = bg }
    G.TreesitterContextLineNumber = { fg = fg, bg = bg }

    return G
end

return M
