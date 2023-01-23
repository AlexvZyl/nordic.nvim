local M = {}

local defaults = {
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat'
    }
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

return M
