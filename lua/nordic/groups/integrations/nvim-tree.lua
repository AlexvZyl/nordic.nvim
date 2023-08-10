local C = require 'nordic.colors'
local O = require('nordic.config').options

return {

    NvimTreeNormal = { fg = C.fg, bg = O.transparent_bg and C.none or C.black0 },
    NvimTreeNormalNC = { fg = C.fg, bg = O.transparent_bg and C.none or C.black0 },

    NvimTreeFolderName = { fg = C.blue1 },
    NvimTreeOpenedFolderName = { fg = C.blue1 },
    NvimTreeEmptyFolderName = { fg = C.blue1 },
    NvimTreeFolderIcon = { fg = C.yellow.dim },

    NvimTreeOpenedFile = { bg = C.black0 },
    NvimTreeOpenedName = { fg = C.blue1 },
    NvimTreeSpecialFile = { fg = C.magenta.bright },
    NvimTreeImageFile = { fg = C.fg_sidebar },

    NvimTreeRootFolder = { fg = C.gray2 },

    NvimTreeGitDirty = { fg = C.gray2 },
    NvimTreeGitNew = { fg = C.gray2 },
    NvimTreeGitDeleted = { fg = C.gray2 },
    NvimTreeGitStaged = { fg = C.gray2 },

    NvimTreeIndentMarker = { fg = C.gray1 },
    NvimTreeWinSeparator = { fg = C.bg_dark, bg = O.transparent_bg and C.none or C.bg_dark },

    NvimTreeCursorLine = { bg = C.gray1 },
    NvimTreeCursor = { bg = C.none, fg = C.none },

    NvimTreeSymlink = { fg = C.blue1 },
}
