local M = {}

M.defaults = {
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Enable brighter float border.
    bright_border = false,
    -- Adjusts some colors to make the theme a bit nicer (imo).
    reduced_blue = true,
    -- Swop the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {},
    -- Cursorline options.
    cursorline = {
        -- Enable bold font in cursorline.
        bold = false,
        -- Avialable styles: 'dark', 'light'.
        theme = 'light',
        -- Hide the cursorline when the window is not focused.
        hide_unfocused = false,
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
}

M.options = M.defaults

function M.setup(opts)
    M.options = vim.tbl_deep_extend('force', M.options, opts or {})
    require 'nordic.colors' .reload()
end

return M
