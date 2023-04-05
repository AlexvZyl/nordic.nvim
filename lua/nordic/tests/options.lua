-- First test the default config, and then test different variations of the config.

local config = require('nordic.config').defaults
local load = require('nordic').load

load(config)

config.theme = 'onedark'
config.bold_keywords = true
config.italic_comments = false
config.transparent_bg = true
config.nordic.reduced_blue = false
config.onedark.brighter_whites = false
config.cursorline.theme = 'light'
config.cursorline.bold = true
config.cursorline.hide_unfocused = false
config.noice.style = 'flat'
config.telescope.style = 'classic'
config.leap.dim_backdrop = true
config.bright_border = false

load(config)
