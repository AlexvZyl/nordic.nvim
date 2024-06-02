-- First test the default config, and then test different variations of the config.

local config = require('nordic.config').options
local load = require('nordic').load

local function flip_string(string)
    local switch = {
        ['light'] = 'dark',
        ['dark'] = 'light',
        ['flat'] = 'classic',
        ['classic'] = 'flat',
    }
    return switch[string]
end

load(config)

config.on_palette = function(palette)
    palette.black0 = '#000000'
end

config.on_highlight = function(highlights, palette)
    highlights.TelescopePromptTitle = {
        fg = palette.red.bright,
        bg = palette.green.base,
        italic = true,
        underline = true,
        sp = palette.yellow.dim,
        undercurl = false
    }
end

-- Flip all fields
config.bold_keywords = not config.bold_keywords
config.italic_comments = not config.italic_comments
config.transparent.bg = not config.transparent.bg
config.transparent.float = not config.transparent.float
config.bright_border = not config.bright_border
config.reduced_blue = not config.reduced_blue
config.swap_backgrounds = not config.swap_backgrounds
config.cursorline.bold = not config.cursorline.bold
config.cursorline.bold_number = not config.cursorline.bold_number
config.cursorline.theme = flip_string(config.cursorline.theme)
config.cursorline.blend = 0
config.noice.style = flip_string(config.noice.style)
config.telescope.style = flip_string(config.telescope.style)
config.leap.dim_backdrop = not config.leap.dim_backdrop
config.ts_context.dark_background = not config.ts_context.dark_background

load(config)
