local c = require 'nordic.colors'
local o = require('nordic.config').options

return {
    -- Normals.
    NvimTreeNormal = { fg = c.fg, bg = o.transparent_bg and c.none or c.black },
    NvimTreeNormalNC = { fg = c.fg, bg = o.transparent_bg and c.none or c.black },

    -- Folders.
    NvimTreeFolderName = { fg = c.blue1 },
    NvimTreeOpenedFolderName = { fg = c.blue1 },
    NvimTreeEmptyFolderName = { fg = c.blue1 },
    NvimTreeFolderIcon = { fg = c.yellow.dim },

    -- Files.
    NvimTreeOpenedFile = { bg = c.black },
    NvimTreeOpenedName = { fg = c.blue1 },
    NvimTreeSpecialFile = { fg = c.fg, underline = true },
    NvimTreeImageFile = { fg = c.fg_sidebar },

    -- Root.
    NvimTreeRootFolder = { fg = c.yellow.base, bold = true },

    -- Git.
    NvimTreeGitDirty = { fg = c.gray2 },
    NvimTreeGitNew = { fg = c.gray2 },
    NvimTreeGitDeleted = { fg = c.gray2 },
    NvimTreeGitStaged = { fg = c.gray2 },

    -- UI.
    NvimTreeIndentMarker = { fg = c.gray1 },
    NvimTreeWinSeparator = { fg = c.bg_sidebar, bg = o.transparent_bg and c.none or c.bg_sidebar },

    -- Cursor.
    NvimTreeCursorLine = { bg = c.gray1 },
    NvimTreeCursor = { bg = c.none, fg = c.none },

    -- Misc.
    NvimTreeSymlink = { fg = c.blue1 },
}
