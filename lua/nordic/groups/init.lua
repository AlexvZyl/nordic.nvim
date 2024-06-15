local merge_inplace = require('nordic.utils').merge_inplace

local M = {}

function M.get_groups()
    local native = require('nordic.groups.native').get_groups()
    local integrations = require('nordic.groups.integrations').get_groups()
    local groups = merge_inplace(native, integrations)

    -- Apply on_highlight
    local palette = require('nordic.colors')
    local options = require('nordic.config').options
    options.on_highlight(groups, palette)

    return groups
end

function M.set_term_colors()
    local colors = require('nordic.groups.terminal')
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

return M
