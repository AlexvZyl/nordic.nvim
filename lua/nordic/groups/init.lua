local merge_inplace = require('nordic.utils').merge_inplace

local M = {}

function M.get_groups()
    local native = require('nordic.groups.native').get_groups()
    local O = require('nordic.config').options

    ---@class Highlights: IntegrationHighlights, NativeHighlights
    local groups = {}
    merge_inplace(groups, native)

    for integration in pairs(O.integrations) do
        if O.integrations[integration] then
            local hl = require('nordic.groups.integrations.' .. integration).get()
            merge_inplace(groups, hl)
        end
    end

    -- Apply on_highlight
    local palette = require('nordic.colors')
    O.on_highlight(groups, palette)

    return groups
end

function M.set_term_colors()
    local colors = require('nordic.groups.terminal')
    for term, col in pairs(colors) do
        vim.g[term] = col
    end
end

return M
