local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.DiffviewNormal = { bg = C.bg_dark, fg = C.fg }
    G.DiffviewStatusLine = { bg = C.black0 }
    G.DiffviewFilePanelTitle = { fg = C.orange.base, bold = true }
    G.DiffviewFolderSign = { fg = C.yellow.dim }
    G.DiffviewFolderName = { bg = C.bg_dark, fg = C.blue1 }

    return G
end

return M
