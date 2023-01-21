local M = {}

-- Load Nordic!
function M.load()

    vim.api.nvim_command("hi clear")

    local groups = require 'nordic.groups'
    require 'nordic.utils'.highlight(groups.get_groups())
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

return M
