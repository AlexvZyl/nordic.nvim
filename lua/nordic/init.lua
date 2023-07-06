local C = require 'nordic.config'
local G = require 'nordic.groups'
local U = require 'nordic.utils'

local M = {}

function M.load(opts)
    if not U.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
        require 'nordic.commands'
    end

    C.setup(opts)
    U.highlight(G.get_groups())
    G.set_term_colors()
end

vim.api.nvim_create_user_command('Nordic', function(_)
    vim.api.nvim_command 'colorscheme nordic'
end, {
    nargs = 1,
})

M.setup = C.setup

return M
