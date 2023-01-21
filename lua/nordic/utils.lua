local M = {}

-- Set the highlight groups.
function M.highlight(table)
    for group, config in pairs(table) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

-- Merge two lua tables.
function M.merge(table1, table2)
    if table1 == table2 == nil then return {} end
    if table1 == nil then return table2
    elseif table2 == nil then return table1
    end
    return vim.tbl_deep_extend(
        "force",
        table1,
        table2
    )
end

return M
