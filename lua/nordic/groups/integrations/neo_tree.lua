local M = {}

function M.get()
    local C = require('nordic.colors')
    local O = require('nordic.config').options
    local G = {}

    -- Neo tree.
    G.NeoTreeCursorLine = { link = 'TreeCursorLine' }
    G.NeoTreeDirectoryIcon = { link = 'TreeFolderIcon' }
    G.NeoTreeRootName = { link = 'TreeRootName' }
    G.NeoTreeRootFolder = { link = 'TreeRootFolder' }
    G.NeoTreeFileIcon = { link = 'TreeFileIcon' }
    G.NeoTreeFileNameOpened = { link = 'TreeFileNameOpened' }
    G.NeoTreeFolderName = { link = 'TreeFolderName' }
    G.NeoTreeOpenedFolderName = { link = 'TreeFolderName' }
    G.NeoTreeEmptyFolderName = { link = 'TreeFolderName' }
    G.NeoTreeSpecialFile = { link = 'TreeSpecialFile' }
    G.NeoTreeIndentMarker = { link = 'TreeIndentMarker' }
    G.NeoTreeGitAdded = { link = 'TreeGitAdded' }
    G.NeoTreeGitNew = { link = 'TreeGitNew' }
    G.NeoTreeGitDirty = { link = 'TreeGitDirty' }
    G.NeoTreeGitDeleted = { link = 'TreeGitDeleted' }
    G.NeoTreeGitStaged = { link = 'TreeGitStaged' }
    G.NeoTreeGitConflict = { link = 'TreeGitConflict' }
    G.NeoTreeGitModified = { link = 'TreeGitModified' }
    G.NeoTreeGitUntracked = { link = 'TreeGitUntracked' }
    G.NeoTreeWinSeparator = { link = 'TreeWinSeparator' }
    G.NeoTreeCursor = { link = 'TreeCursor' }
    G.NeoTreeNormal = { link = 'TreeNormal' }
    G.NeoTreeNormalNC = { link = 'TreeNormalNC' }
    G.NeoTreeSymbolicLinkTarget = { link = 'TreeSymlink' }
    G.NeoTreeTitleBar = { link = 'TreeTitleBar' }
    G.NeoTreeFloatBorder = { link = 'TreeFloatBorder' }

    return G
end

return M
