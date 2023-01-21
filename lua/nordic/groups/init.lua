local merge = require 'nordic.utils'.merge

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
    for integration in M.integrations do
        groups = merge(
            groups,
            require("nordic.groups.integrations." .. integration)
        )
    end
    for core in M.core do
        groups = merge(
            groups,
            require("nordic.groups." .. core)
        )
    end
    return groups
end

return M
