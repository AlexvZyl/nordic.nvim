local M = {}

M.defaults = {
	telescope = {
		-- Available styles: `classic`, `flat`.
		style = 'flat',
	},
	-- Enable bold keywords and operators
	bold_keywords = true,
	-- Enable italicized comments
	italic_comments = true,
	-- Enable general editor background transparency
	transparent_bg = false,
	-- Override styling of any highlight group
	override = {},
	cursorline = {
		bold = false,
		-- Avialable styles: 'dark', 'light'.
		theme = 'dark',
	},
}

M.options = {}

function M.setup(options)
	M.options = vim.tbl_deep_extend('force', {}, M.defaults, options or {})
end

function M.extend(options)
	M.options = vim.tbl_deep_extend('force', {}, M.options or M.defaults, options or {})
end

-- Init the config.
M.setup()

return M
