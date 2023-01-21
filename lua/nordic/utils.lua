local M = {}

-- Set the highlight groups.
function M.highlight(table)
    for group, config in pairs(table) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

-- Merge two lua tables.
function M.merge(table1, table2)
    return vim.tbl_deep_extend(
        "force",
        table1,
        table2
    )
end

return M
