local U = require('nordic.utils')

local M = {}

---@type fun(options: NordicOptions)
function M.load(options)
    if not U.loaded() then
        vim.api.nvim_command('hi clear')
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
    end

    if options then require('nordic.config').setup(options) end

    -- Setup colors
    require('nordic.colors').build_palette()

    -- Apply theme
    local G = require('nordic.groups')
    U.apply_highlights(G.get_groups())
    G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('Nordic', function(_)
    vim.api.nvim_command('colorscheme nordic')
end, {
    nargs = 1,
})

M.setup = require('nordic.config').setup

return M
