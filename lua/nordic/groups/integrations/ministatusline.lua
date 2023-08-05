local C = require 'lualine.themes.nordic'

return {
    MiniStatuslineModeNormal = {
        bg = C.normal.a.bg,
        fg = C.normal.a.fg,
        bold = C.normal.a.gui == 'bold',
    },
    MiniStatuslineModeInsert = {
        bg = C.insert.a.bg,
        fg = C.insert.a.fg,
        bold = C.insert.a.gui == 'bold',
    },
    MiniStatuslineModeVisual = {
        bg = C.visual.a.bg,
        fg = C.visual.a.fg,
        bold = C.visual.a.gui == 'bold',
    },
    MiniStatuslineModeReplace = {
        bg = C.replace.a.bg,
        fg = C.replace.a.fg,
        bold = C.replace.a.gui == 'bold',
    },
    MiniStatuslineModeCommand = {
        bg = C.command.a.bg,
        fg = C.command.a.fg,
        bold = C.command.a.gui == 'bold',
    },
    MiniStatuslineModeOther = {
        bg = C.terminal.a.bg,
        fg = C.terminal.a.fg,
        bold = C.terminal.a.gui == 'bold',
    },

    MiniStatuslineDevinfo = {
        bg = C.normal.b.bg,
        fg = C.normal.b.fg,
    },
    MiniStatuslineFilename = {
        bg = C.normal.c.bg,
        fg = C.normal.c.fg,
    },
    MiniStatuslineFileinfo = {
        bg = C.normal.b.bg,
        fg = C.normal.b.fg,
    },

    MiniStatuslineInactive = {
        bg = C.inactive.a.bg,
        fg = C.inactive.a.fg,
        bold = C.inactive.a.gui == 'bold',
    },
}
