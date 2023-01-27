local M = {}

local defaults = {
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
}

M.options = {}

function M.setup(options)
	M.options = vim.tbl_deep_extend('force', {}, defaults, options or {})
end

function M.extend(options)
	M.options = vim.tbl_deep_extend('force', {}, M.options or defaults, options or {})
end

-- Init the config.
M.setup()

return M
