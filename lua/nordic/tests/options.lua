-- First test the default config, and then test different variations of the config.

local config = require('nordic.config').defaults
local load = require('nordic').load

load(config)

config.bold_keywords = true
config.italic_comments = false
config.transparent_bg = true
config.reduced_blue = false
config.cursorline.theme = 'light'
config.cursorline.bold = true
config.cursorline.hide_unfocused = true
config.noice.style = 'classic'
config.telescope.style = 'classic'
config.leap.dim_backdrop = true
config.bright_border = true
config.swap_backgrounds = true

load(config)
