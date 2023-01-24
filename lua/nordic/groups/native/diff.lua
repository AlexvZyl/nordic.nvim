-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'
local u = require 'nordic.utils'

return {

	DiffAdd = {
		bg = c.diff.bg,
		fg = c.diff.add,
	}, -- diff mode: Added line |diff.txt|

	DiffChange = {
		bg = u.blend(c.diff.bg, c.bg, 0.35),
	}, -- diff mode: Changed line |diff.txt|

	DiffDelete = {
		bg = c.diff.bg,
		fg = c.diff.delete,
	}, -- diff mode: Deleted line |diff.txt|

	DiffText = {
		bg = c.diff.bg,
		fg = c.diff.change,
	}, -- diff mode: Changed text within a changed line |diff.txt|

	diffAdded = {
		fg = c.green.bright,
	},

	diffRemoved = {
		fg = c.red.bright,
	},

	diffChanged = {
		fg = c.yellow.base,
	},

	diffOldFile = {
		fg = c.yellow.dim,
	},

	diffNewFile = {
		fg = c.green.base,
	},

	diffFile = {
		fg = c.white0,
	},

	diffLine = {
		fg = c.white0,
	},

	diffIndexLine = {
		fg = c.orange.base,
	},
}
