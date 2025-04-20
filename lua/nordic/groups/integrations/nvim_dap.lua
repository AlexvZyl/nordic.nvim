local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.DapBreakPoint = { fg = C.red.bright }

    -- UI.
    G.DapUINormal = { bg = C.bg_float }
    G.DapUIStop = { fg = C.red.bright, bold = true }
    G.DapUIRestart = { fg = C.green.bright, bold = true }
    G.DapUIPlayPause = { fg = C.green.bright, bold = true }
    G.DapUIStepInto = { fg = C.blue2, bold = true }
    G.DapUIStepOver = { fg = C.blue2, bold = true }
    G.DapUIStepOut = { fg = C.blue2, bold = true }
    G.DapUIStepBack = { fg = C.blue3, bold = true }
    G.DapUIValue = { fg = C.magenta.bright }
    G.DapUIWatchesValue = { fg = C.green.bright }
    G.DapUIType = { fg = C.yellow.base }
    G.DapUIFloatBorder = { fg = C.border_nb, bg = C.bg }
    G.DapUIFloatNormal = { bg = C.bg }
    G.DapUILineNumber = { fg = C.green.bright }

    return G
end

return M
