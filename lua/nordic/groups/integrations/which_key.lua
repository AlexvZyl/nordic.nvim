local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.WhichKey = { fg = C.yellow.base }
    G.WhichKeyFloat = { bg = C.bg_float }
    G.WhichKeyDesc = { fg = C.white0 }
    G.WhichKeyGroup = { fg = C.orange.bright, bold = true }
    G.WhichKeyBorder = { fg = C.black0, bg = C.bg_float }
    -- TODO: Unsure.
    G.WhichKeySeperator = {}
    G.WhichKeyValue = {}

    return G
end

return M
