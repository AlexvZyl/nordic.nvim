local M = {}

---@class NordicOptions
---@field on_palette fun(palette: BasePalette)
---@field after_palette fun(palette: ExtendedPalette)
---@field on_highlight fun(highlights: Highlights, palette: ExtendedPalette)
local defaults = {
    -- This callback can be used to override the colors used in the base palette.
    on_palette = function(palette) end,
    -- This callback can be used to override the colors used in the extended palette.
    after_palette = function(palette) end,
    -- This callback can be used to override highlights before they are applied.
    on_highlight = function(highlights, palette) end,
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable editor background transparency.
    transparent = {
        -- Enable transparent background.
        bg = false,
        -- Enable transparent background for floating windows.
        float = false,
    },
    -- Enable brighter float border.
    bright_border = false,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = true,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
    },
    integrations = {
        dashboard = true,
        diff_view = true,
        gitsigns = true,
        indent_blankline = true,
        lazy = true,
        leap = true,
        lsp_saga = true,
        mini = true,
        neo_tree = true,
        neorg = true,
        noice = true,
        notify = true,
        nvim_cmp = true,
        nvim_dap = true,
        nvim_tree = true,
        rainbow_delimiters = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        trouble = true,
        vimtex = true,
        visual_whitespace = true,
        which_key = true,
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
    },
}

M.options = defaults

-- called automatically by load
---@type fun(options: NordicOptions)
function M.setup(options)
    -- backwards compatibility
    options = require('nordic.compatibility')(options)

    -- set defaults
    M.options = vim.tbl_deep_extend('force', M.options or defaults, options or {})
end

return M
