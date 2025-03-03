local M = {}

function M.get()
    local LC = require('lualine.themes.nordic')

    local G = {}

    G.MiniStatuslineModeNormal = { bg = LC.normal.a.bg, fg = LC.normal.a.fg, bold = LC.normal.a.gui == 'bold' }
    G.MiniStatuslineModeInsert = { bg = LC.insert.a.bg, fg = LC.insert.a.fg, bold = LC.insert.a.gui == 'bold' }
    G.MiniStatuslineModeVisual = { bg = LC.visual.a.bg, fg = LC.visual.a.fg, bold = LC.visual.a.gui == 'bold' }
    G.MiniStatuslineModeReplace = { bg = LC.replace.a.bg, fg = LC.replace.a.fg, bold = LC.replace.a.gui == 'bold' }
    G.MiniStatuslineModeCommand = { bg = LC.command.a.bg, fg = LC.command.a.fg, bold = LC.command.a.gui == 'bold' }
    G.MiniStatuslineModeOther = { bg = LC.terminal.a.bg, fg = LC.terminal.a.fg, bold = LC.terminal.a.gui == 'bold' }
    G.MiniStatuslineDevinfo = { bg = LC.normal.b.bg, fg = LC.normal.b.fg }
    G.MiniStatuslineFilename = { bg = LC.normal.c.bg, fg = LC.normal.c.fg }
    G.MiniStatuslineFileinfo = { bg = LC.normal.b.bg, fg = LC.normal.b.fg }
    G.MiniStatuslineInactive = { bg = LC.inactive.a.bg, fg = LC.inactive.a.fg, bold = LC.inactive.a.gui == 'bold' }

    return G
end

return M
