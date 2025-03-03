local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.GitSignsAdd = { fg = C.git.add, bg = C.bg_sidebar }
    G.GitSignsChange = { fg = C.git.change, bg = C.bg_sidebar }
    G.GitSignsDelete = { fg = C.git.delete, bg = C.bg_sidebar }
    G.GitSignsAddPreview = { link = 'GitSignsAdd' }
    G.GitSignsDeletePreview = { link = 'GitSignsDelete' }

    return G
end

return M
