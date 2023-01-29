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
        fg = c.diff.change,
        bg = c.diff.bg0,
        bold = true
    }, -- diff mode: Changed text within a changed line |diff.txt|

    diffAdded = {
        fg = c.diff.add
    },

    diffRemoved = {
        fg = c.diff.delete
    },

    diffChanged = {
        fg = c.diff.change
    },

    diffOldFile = {
        fg = c.fg,
    },

    diffNewFile = {
        fg = c.green.base,
    },

    diffFile = {
        fg = c.fg,
    },

    diffLine = {},

    diffIndexLine = {},

}
