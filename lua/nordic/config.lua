local M = {}

M.defaults = {
    -- Available themes: 'nordic', 'onedark'.
    theme = 'nordic',
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Nordic specific options.
    -- Set all to false to use original Nord colors.
    -- Adjusts some colors to make the theme a bit nicer (imo).
    nordic = {
        -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        reduced_blue = true,
    },
    -- Onedark specific options.
    -- Set all to false to keep original onedark colors.
    -- Adjusts some colors to make the theme a bit nicer (imo).
    onedark = {
        -- Brighten the whites to fit the theme better.
        brighter_whites = true,
    },
    -- Override the styling of any highlight group.
    override = {},
    cursorline = {
        -- Enable bold font in cursorline.
        bold = false,
        -- Avialable styles: 'dark', 'light'.
        theme = 'light',
        -- Hide the cursorline when the window is not focused.
        hide_unfocused = true,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
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
