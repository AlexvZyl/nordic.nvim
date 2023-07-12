-- First test the default config, and then test different variations of the config.

local config = require('nordic.config').options
local load = require('nordic').load

load(config)

config.bold_keywords = true
config.italic_comments = false
config.transparent_bg = true
config.bright_border = true
config.reduced_blue = false
config.swap_backgrounds = true
config.cursorline.bold = true
config.cursorline.bold_number = true
config.cursorline.blend = 0
config.cursorline.theme = 'light'
config.noice.style = 'classic'
config.telescope.style = 'classic'
config.leap.dim_backdrop = true

load(config)
