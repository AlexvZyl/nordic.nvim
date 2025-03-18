local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.NotifyBackground = { bg = C.bg_float }
    G.NotifyERRORBorder = { fg = C.error }
    G.NotifyERRORIcon = { fg = C.error }
    G.NotifyERRORTitle = { fg = C.error, bold = true }
    G.NotifyERRORBody = { fg = C.fg }
    G.NotifyWARNBorder = { fg = C.warn }
    G.NotifyWARNIcon = { fg = C.warn }
    G.NotifyWARNTitle = { fg = C.warn, bold = true }
    G.NotifyWARNBody = { fg = C.fg }
    G.NotifyINFOBorder = { fg = C.info }
    G.NotifyINFOIcon = { fg = C.info }
    G.NotifyINFOTitle = { fg = C.info, bold = true }
    G.NotifyINFOBody = { fg = C.fg }
    G.NotifyDEBUGBorder = { fg = C.orange.bright }
    G.NotifyDEBUGIcon = { fg = C.orange.bright }
    G.NotifyDEBUGTitle = { fg = C.orange.bright, bold = true }
    G.NotifyDEBUGBody = { fg = C.fg }
    G.NotifyTRACEBorder = { fg = C.gray5 }
    G.NotifyTRACEIcon = { fg = C.gray5 }
    G.NotifyTRACETitle = { fg = C.gray5, bold = true }
    G.NotifyTRACEBody = { fg = C.fg }

    return G
end

return M
