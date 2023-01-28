local c = require 'nordic.colors'
local o = require('nordic.config').options

return {
	NeoTreeCursorLine = { bg = c.bg_selected, fg = c.fg_selected, bold = true },
	NeoTreeDirectoryIcon = { fg = c.yellow.dim },
	NeoTreeRootName = { fg = c.yellow.base, bold = true },
	NeoTreeFileName = { fg = c.white0, bg = o.transparent_bg and c.none or c.black },
	NeoTreeFileIcon = { fg = c.blue1 },
	NeoTreeFileNameOpened = { fg = c.blue1 },
	NeoTreeIndentMarker = { fg = c.grey2 },
	NeoTreeGitAdded = { fg = c.git.add },
	NeoTreeGitConflict = { fg = c.magenta.bright },
	NeoTreeGitModified = { fg = c.git.change },
	NeoTreeGitUntracked = { fg = c.fg_sidebar },
	NeoTreeNormal = { fg = c.white0, bg = o.transparent_bg and c.none or c.black },
	NeoTreeNormalNC = { fg = c.white0, bg = o.transparent_bg and c.none or c.black },
	NeoTreeSymbolicLinkTarget = { fg = c.blue1 },
}
