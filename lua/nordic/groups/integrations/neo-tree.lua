local C = require 'nordic.colors'

return {

    NeoTreeCursorLine = { link = 'NvimTreeCursorLine' },
    NeoTreeDirectoryIcon = { link = 'NvimTreeFolderIcon' },
    NeoTreeRootName = { link = 'NvimTreeRootFolder' },
    NeoTreeFileName = { link = 'NvimTreeNormal' },
    NeoTreeFileIcon = { fg = C.blue2 },
    NeoTreeFileNameOpened = { fg = C.fg },
    NeoTreeIndentMarker = { link = 'NvimTreeIndentMarker' },
    NeoTreeGitAdded = { fg = C.git.add },
    NeoTreeGitConflict = { fg = C.magenta.bright },
    NeoTreeGitModified = { fg = C.git.change },
    NeoTreeGitUntracked = { fg = C.fg_sidebar },
    NeoTreeNormal = { link = 'NvimTreeNormal' },
    NeoTreeNormalNC = { link = 'NvimTreeNormalNC' },
    NeoTreeSymbolicLinkTarget = { link = 'NvimTreeSymlink' },
}
