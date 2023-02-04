local c = require 'nordic.colors'

return {
    NeoTreeCursorLine = { link = 'NvimTreeCursorLine' },
    NeoTreeDirectoryIcon = { link = 'NvimTreeFolderIcon' },
    NeoTreeRootName = { link = 'NvimTreeRootFolder' },
    NeoTreeFileName = { link = 'NvimTreeNormal' },
    NeoTreeFileIcon = { fg = c.blue2 },
    NeoTreeFileNameOpened = { fg = c.fg },
    NeoTreeIndentMarker = { link = 'NvimTreeIndentMarker' },
    NeoTreeGitAdded = { fg = c.git.add },
    NeoTreeGitConflict = { fg = c.magenta.bright },
    NeoTreeGitModified = { fg = c.git.change },
    NeoTreeGitUntracked = { fg = c.fg_sidebar },
    NeoTreeNormal = { link = 'NvimTreeNormal' },
    NeoTreeNormalNC = { link = 'NvimTreeNormalNC' },
    NeoTreeSymbolicLinkTarget = { link = 'NvimTreeSymlink' },
}
