local merge = require('nordic.utils').merge

local M = {}

function M.get_groups()
    local native = require('nordic.groups.native').get_groups()
    local integrations = require('nordic.groups.integrations').get_groups()
    local groups = merge(native, integrations)

    local palette = require('nordic.colors')
    return require("nordic.config").options.on_highlight(groups, palette) -- (highlights, palette)
end

function M.set_term_colors()
    local colors = require 'nordic.groups.terminal'
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

return M
