-- First test the default config, and then test different variations of the config.

local config = require('nordic.config').defaults
local load = require('nordic').load

load(config)

config.telescope.style = 'classic'
config.noice.style = 'classic'
config.bold_keywords = false
config.italic_comments = false
config.transparent_bg = true
config.cursorline.theme = 'light'
config.cursorline.bold = true
config.reduced_blue = false

load(config)
