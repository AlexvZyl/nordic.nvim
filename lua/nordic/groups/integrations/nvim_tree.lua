local M = {}

function M.get()
    local G = {}

    G.NvimTreeNormal = { link = 'TreeNormal' }
    G.NvimTreeNormalNC = { link = 'TreeNormalNC' }
    G.NvimTreeFolderName = { link = 'TreeFolderName' }
    G.NvimTreeOpenedFolderName = { link = 'TreeFolderName' }
    G.NvimTreeEmptyFolderName = { link = 'TreeFolderName' }
    G.NvimTreeFolderIcon = { link = 'TreeFolderIcon' }
    G.NvimTreeFileIcon = { link = 'TreeFileIcon' }
    G.NvimTreeFileNameOpened = { link = 'TreeFileNameOpened' }
    G.NvimTreeSpecialFile = { link = 'TreeSpecialFile' }
    G.NvimTreeRootFolder = { link = 'TreeRootFolder' }
    G.NvimTreeGitDirty = { link = 'TreeGitDirty' }
    G.NvimTreeGitAdded = { link = 'TreeGitAdded' }
    G.NvimTreeGitNew = { link = 'TreeGitNew' }
    G.NvimTreeGitDeleted = { link = 'TreeGitDeleted' }
    G.NvimTreeGitStaged = { link = 'TreeGitStaged' }
    G.NvimTreeGitConflict = { link = 'TreeGitConflict' }
    G.NvimTreeGitModified = { link = 'TreeGitModified' }
    G.NvimTreeIndentMarker = { link = 'TreeIndentMarker' }
    G.NvimTreeWinSeparator = { link = 'TreeWinSeparator' }
    G.NvimTreeCursorLine = { link = 'TreeCursorLine' }
    G.NvimTreeCursor = { link = 'TreeCursor' }
    G.NvimTreeSymlink = { link = 'TreeSymlink' }

    return G
end

return M
