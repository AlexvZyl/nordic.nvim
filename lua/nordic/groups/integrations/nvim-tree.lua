local c = require 'nordic.colors'
local o = require('nordic.config').options

return {

    NvimTreeFolderIcon = { fg = c.yellow.dim },
    NvimTreeFolderName = { fg = c.blue1 },
    NvimTreeEmptyFolderName = { fg = c.blue1 },
    NvimTreeOpenedFolderName = { fg = c.blue2 },
    NvimTreeOpenedName = { fg = c.blue1 },
    NvimTreeRootFolder = { fg = c.yellow.base, bold = true },
    NvimTreeNormal = { fg = c.white0, bg = o.transparent_bg and c.none or c.black },
    NvimTreeNormalNC = { fg = c.white0, bg = o.transparent_bg and c.none or c.black },
    NvimTreeIndentMarker = { fg = c.gray2 },

    NvimTreeWinSeparator = { fg = c.bg_sidebar, bg = o.transparent_bg and c.none or c.bg_sidebar },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeOpenedFile = { bg = c.black },
    NvimTreeSpecialFile = { fg = c.magenta.brigt, underline = true },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeSymlink = { fg = c.blue1 },
    NeoTreeNormal = { fg = c.white0, bg = c.black },
    NeoTreeNormalNC = { fg = c.white0, bg = c.black },
}
