local M = {}

-- Load Nordic!
function M.load()

    vim.api.nvim_command("hi clear")

    require 'nordic.utils'.highlight(
        require 'nordic.groups'.get_groups()
    )

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
