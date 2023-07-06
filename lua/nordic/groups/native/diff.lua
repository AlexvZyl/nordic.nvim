-- Notes and format from folke/tokyonight.nvim @GutHub.

local C = require 'nordic.colors'

return {

    DiffAdd = { bg = C.diff.add, bold = true }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = C.diff.change0 }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = C.diff.delete, bold = true }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = C.diff.change1, bold = true }, -- diff mode: Changed text within a changed line |diff.txt|

    diffAdded = { fg = C.git.add },
    diffRemoved = { fg = C.git.delete },
    diffChanged = { fg = C.git.change },
    diffOldFile = { fg = C.fg },
    diffNewFile = { fg = C.green.base },
    diffFile = { fg = C.fg },

    diffLine = {},
    diffIndexLine = {},

}
