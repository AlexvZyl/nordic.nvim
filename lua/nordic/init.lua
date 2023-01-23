local config = require 'nordic.config'

local M = {}

-- Load Nordic!
function M.load(opts)

    -- Clear if there is an existing theme.
    if vim.g.colors_name then
        vim.api.nvim_command("hi clear")
    end

    vim.g.colors_name = 'nordic'

    if opts then
        require 'nordic.config' .extend(opts)
    end

    local groups = require 'nordic.groups'
    require 'nordic.utils' .highlight(groups.get_groups())
    groups.set_term_colors()

end

-- Expose the colorsceheme to vim.
vim.api.nvim_create_user_command(
	"Nordic",
	function(_) vim.api.nvim_command("colorscheme nordic") end,
	{
		nargs = 1,
	}
)

M.setup = config.setup

return M
