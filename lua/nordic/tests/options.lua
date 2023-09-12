-- First test the default config, and then test different variations of the config.

local config = require('nordic.config').options
local load = require('nordic').load

load(config)

config.on_palette = function(palette)
    palette.black0 = '#000000'
    return palette
end

-- Flip all fields
config.bold_keywords = not config.bold_keywords
config.italic_comments = not config.italic_comments
config.transparent_bg = not config.transparent_bg
config.bright_border = not config.bright_border
config.reduced_blue = not config.reduced_blue
config.swap_backgrounds = not config.swap_backgrounds
config.cursorline.bold = not config.cursorline.bold
config.cursorline.bold_number = not config.cursorline.bold_number
config.cursorline.theme = 'light'
config.cursorline.blend = 0
config.noice.style = 'classic'
config.telescope.style = 'classic'
config.leap.dim_backdrop = not config.leap.dim_backdrop
config.ts_context.dark_background = not config.ts_context.dark_background

load(config)
