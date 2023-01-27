local c = require 'nordic.colors'
local o = require('nordic.config').options

-- Classic.
local groups = {

	-- Normals.
	TelescopePromptNormal = {
		bg = c.bg,
	},
	TelescopeResultsNormal = {
		bg = c.bg,
	},
	TelescopePreviewNormal = {
		bg = c.bg,
	},

	-- Selection.
	TelescopeSelection = {
		bg = c.bg_selected,
		fg = c.fg_selected,
		bold = true,
	},
	TelescopeSelectionCaret = {
		fg = c.fg_selected,
		bg = c.bg_selected,
		bold = true,
	},

	-- Titles.
	TelescopePreviewTitle = {
		fg = c.border_float,
		bg = c.bg,
		bold = true,
	},
	TelescopeResultsTitle = {
		fg = c.border_float,
		bg = c.bg,
		bold = true,
	},
	TelescopePromptTitle = {
		fg = c.border_float,
		bg = c.bg,
		bold = true,
	},
	TelescopeTitle = {
		fg = c.border_float,
		bg = c.bg,
		bold = true,
	},

	-- Borders.
	TelescopeBorder = {
		fg = c.border_float,
		bg = c.bg,
	},
	TelescopePromptBorder = {
		fg = c.border_float,
		bg = c.bg,
	},
	TelescopeResultsBorder = {
		fg = c.border_float,
		bg = c.bg,
	},
	TelescopePreviewBorder = {
		fg = c.border_float,
		bg = c.bg,
	},

	-- Misc.
	TelescopeMatching = {
		fg = c.green.bright,
		bold = true,
	},
	TelescopePromptPrefix = {
		bg = c.bg,
		fg = c.orange.bright,
	},
}

-- Apply the flat style.
if o.telescope.style == 'flat' then
	-- Normals.
	groups.TelescopePromptNormal = {
		bg = c.gray1,
	}
	groups.TelescopeResultsNormal = {
		bg = c.bg_dark,
	}
	groups.TelescopePreviewNormal = {
		bg = c.bg_dark,
	}

	-- Selection.
	groups.TelescopeSelection = {
		bg = c.gray1,
		fg = c.fg_bright,
		bold = true,
	}
	groups.TelescopeSelectionCaret = {
		fg = c.yellow.bright,
		bg = c.gray1,
		bold = true,
	}

	-- Titles.
	groups.TelescopePreviewTitle = {
		bg = c.orange.base,
		fg = c.black,
		bold = true,
	}
	groups.TelescopeResultsTitle = {
		bg = c.orange.base,
		fg = c.black,
		bold = true,
	}
	groups.TelescopePromptTitle = {
		bg = c.orange.base,
		fg = c.black,
		bold = true,
	}
	groups.TelescopeTitle = {
		bg = c.orange.base,
		fg = c.black,
		bold = true,
	}

	-- Borders.
	groups.TelescopeBorder = {
		fg = c.gray1,
		bg = c.gray1,
	}
	groups.TelescopePromptBorder = {
		bg = c.gray1,
		fg = c.gray1,
	}
	groups.TelescopeResultsBorder = {
		bg = c.bg_dark,
		fg = c.bg_dark,
	}
	groups.TelescopePreviewBorder = {
		bg = c.bg_dark,
		fg = c.bg_dark,
	}

	-- Misc.
	groups.TelescopePromptPrefix = {
		bg = c.gray1,
		fg = c.orange.bright,
	}
end

return groups
