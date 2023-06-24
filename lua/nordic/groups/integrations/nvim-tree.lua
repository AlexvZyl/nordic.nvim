local c = require 'nordic.colors'
local o = require('nordic.config').options

return {

    NvimTreeNormal = { fg = c.fg, bg = o.transparent_bg and c.none or c.black },
    NvimTreeNormalNC = { fg = c.fg, bg = o.transparent_bg and c.none or c.black },

    NvimTreeFolderName = { fg = c.blue1 },
    NvimTreeOpenedFolderName = { fg = c.blue1 },
    NvimTreeEmptyFolderName = { fg = c.blue1 },
    NvimTreeFolderIcon = { fg = c.yellow.dim },

    NvimTreeOpenedFile = { bg = c.black },
    NvimTreeOpenedName = { fg = c.blue1 },
    NvimTreeSpecialFile = { fg = c.magenta.bright },
    NvimTreeImageFile = { fg = c.fg_sidebar },

    NvimTreeRootFolder = { fg = c.gray2 },

    NvimTreeGitDirty = { fg = c.gray2 },
    NvimTreeGitNew = { fg = c.gray2 },
    NvimTreeGitDeleted = { fg = c.gray2 },
    NvimTreeGitStaged = { fg = c.gray2 },

    NvimTreeIndentMarker = { fg = c.gray1 },
    NvimTreeWinSeparator = { fg = c.bg_sidebar, bg = o.transparent_bg and c.none or c.bg_sidebar },

    NvimTreeCursorLine = { bg = c.gray1 },
    NvimTreeCursor = { bg = c.none, fg = c.none },

    NvimTreeSymlink = { fg = c.blue1 },
}
