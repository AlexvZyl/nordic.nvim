-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'

return {

    DiffAdd = {
        bg = c.diff.bg0,
        fg = c.diff.add,
        bold = true
    }, -- diff mode: Added line |diff.txt|

    DiffChange = {
        bg = c.diff.bg1,
    }, -- diff mode: Changed line |diff.txt|

    DiffDelete = {
        bg = c.diff.bg0,
        fg = c.diff.delete,
        bold = true
    }, -- diff mode: Deleted line |diff.txt|

    DiffText = {
        link = 'DiffAdd'
    }, -- diff mode: Changed text within a changed line |diff.txt|

    diffAdded = {
        link = 'DiffAdd'
    },

    diffRemoved = {
        link = 'DiffDelete'
    },

    diffChanged = {
        link = 'DiffChange'
    },

    diffOldFile = {
        fg = c.yellow.dim,
    },

    diffNewFile = {
        fg = c.green.base,
    },

    diffFile = {
        fg = c.white0,
    },

    diffLine = {
        fg = c.white0,
    },

    diffIndexLine = {
        fg = c.orange.base,
    },
}
