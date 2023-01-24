local M = {}

local defaults = {
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat'
    },
    -- These values will be used to override the default.
    syntax = {
        comments = {
            italic = true
        },
        operators = {
            bold = true
        },
        keywords = {
            bold = true
        },
    }
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

-- Init the config.
M.setup()

return M
