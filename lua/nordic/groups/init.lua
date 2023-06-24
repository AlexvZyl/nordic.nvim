local merge = require('nordic.utils').merge

local M = {}

M.integrations = {
    'barbar',
    'dap-ui',
    'dap',
    'dashboard',
    'indent-blankline',
    'lspsaga',
    'neo-tree',
    'nvim-tree',
    'treesitter',
    'trouble',
    'which-key',
    'gitsigns',
    'telescope',
    'leap',
    'diffview',
    'nvim-cmp',
    'nvim-notify',
    'vimtex',
    'noice',
}

M.native = {
    'editor',
    'syntax',
    'diff',
    'lsp',
}

function M.get_groups()
    local groups = {}
    for _, native in ipairs(M.native) do
        groups = merge(groups, require('nordic.groups.native.' .. native))
    end
    for _, integration in ipairs(M.integrations) do
        groups = merge(groups, require('nordic.groups.integrations.' .. integration))
    end
    return groups
end

function M.set_term_colors()
    local colors = require 'nordic.groups.native.terminal'
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

return M
