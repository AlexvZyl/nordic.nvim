local M = {}

-- Set the highlight groups.
function M.highlight(table)
    for group, config in pairs(table) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

return M
