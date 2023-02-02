local M = {}

M.defaults = {
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Override styling of any highlight group.
    override = {},
    cursorline = {
        -- Enable bold font in cursorline.
        bold = false,
        -- Avialable styles: 'dark', 'light'.
        theme = 'light',
    },
}

M.options = {}

function M.setup(options)
    M.options = vim.tbl_deep_extend('force', {}, M.defaults, options or {})
end

function M.extend(options)
    M.options = vim.tbl_deep_extend('force', {}, M.options or M.defaults, options or {})
end

-- Init the config.
M.setup()

return M
