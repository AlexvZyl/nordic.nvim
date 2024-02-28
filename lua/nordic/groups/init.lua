local merge = require('nordic.utils').merge

local M = {}

function M.get_groups()
    local groups = merge(
        require('nordic.groups.native').get_groups(),
        require('nordic.groups.integrations').get_groups()
    )
    print(vim.inspect(groups["Comment"]))
    print(vim.inspect(groups["@comment"]))
    return merge(
        groups,
        require 'nordic.config'.options.override
    )
end

function M.set_term_colors()
    local colors = require 'nordic.groups.terminal'
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

return M
