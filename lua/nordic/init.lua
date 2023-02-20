local config = require 'nordic.config'
local merge = require('nordic.utils').merge

local M = {}

-- Load Nordic!
function M.load(opts)
    -- Clear if there is an existing theme.
    if vim.g.colors_name then vim.api.nvim_command 'hi clear' end

    vim.g.colors_name = 'nordic'

    if opts then require('nordic.config').extend(opts) end

    local g = require 'nordic.groups'
    local groups = merge(g.get_groups(), config.options.override)
    require('nordic.utils').highlight(groups)
    g.set_term_colors()
    require 'nordic.commands'
end

-- Expose the colorsceheme to vim.
vim.api.nvim_create_user_command('Nordic', function(_)
    vim.api.nvim_command 'colorscheme nordic'
end, {
    nargs = 1,
})

M.setup = config.setup

return M
