local U = require 'nordic.utils'

local M = {}

function M.load(opts)
    if not U.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
    end

    if opts then require('nordic.config').setup(opts) end

    -- Setup colors
    require('nordic.colors').build_palette()

    -- Apply theme
    local G = require 'nordic.groups'
    U.highlight(G.get_groups())
    G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('Nordic', function(_)
    vim.api.nvim_command 'colorscheme nordic'
end, {
    nargs = 1,
})

M.setup = require('nordic.config').setup

return M
