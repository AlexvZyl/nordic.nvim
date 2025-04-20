local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.SagaBorder = { bg = C.black2, fg = C.fg_float_border }
    G.SagaNormal = { bg = C.black2 }
    G.HoverBorder = { link = 'FloatBorder' }
    G.HoverNormal = { link = 'NormalFloat' }
    G.RenameNormal = { bg = C.bg_float, fg = C.yellow.bright }
    G.RenameBorder = { link = 'FloatBorder' }
    G.DiagnosticPos = { fg = C.fg }
    G.DiagnosticWord = { fg = C.fg }
    G.DiagnosticSource = { fg = C.gray4 }
    G.DiagnosticNormal = { link = 'NormalFloat' }
    G.DiagnosticShowNormal = { link = 'NormalFloat' }
    G.DiagnosticShowBorder = { link = 'FloatBorder' }
    G.DiagnosticBorder = { link = 'FloatBorder' }

    return G
end

return M
