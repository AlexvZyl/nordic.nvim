-- Notes and format from folke/tokyonight.nvim @GutHub.

local c = require 'nordic.colors'

return {

    DiffAdd = { bg = c.diff.add, bold = true }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.diff.change0 }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = c.diff.delete, bold = true }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.diff.change1, bold = true }, -- diff mode: Changed text within a changed line |diff.txt|

    diffAdded = { fg = c.git.add },
    diffRemoved = { fg = c.git.delete },
    diffChanged = { fg = c.git.change },
    diffOldFile = { fg = c.fg },
    diffNewFile = { fg = c.green.base },
    diffFile = { fg = c.fg },

    diffLine = {},
    diffIndexLine = {},

}
