local merge = require 'nordic.utils' .merge

local M = {}

M.integrations = {
    "barbar",
    "dap-ui",
    "dap",
    "dashboard",
    "indent-blankline",
    "lspsaga",
    "lualine",
    "nvim-tree",
    "treesitter"
}

M.core = {
    "editor",
    "syntax",
    "terminal"
}

function M.get_groups()
    local groups = {}
    for _, integration in ipairs(M.integrations) do
        groups = merge(
            groups,
            require("nordic.groups.integrations." .. integration)
        )
    end
    for _, core in ipairs(M.core) do
        groups = merge(
            groups,
            require("nordic.groups." .. core)
        )
    end
    return groups
end

return M
