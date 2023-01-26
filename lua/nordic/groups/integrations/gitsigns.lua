local c = require 'nordic.colors'
local opts = require 'nordic.config'.options

return {

	GitSignsAdd = {
		fg = c.git.add,
		bg = opts.transparent and c.none or c.bg_sidebar,
	},

	GitSignsChange = {
		fg = c.git.change,
		bg = opts.transparent and c.none or c.bg_sidebar,
	},

	GitSignsDelete = {
		fg = c.git.delete,
		bg = opts.transparent and c.none or c.bg_sidebar,
	},

	GitSignsAddPreview = {
		link = 'GitSignsAdd',
	},

	GitSignsDeletePreview = {
		link = 'GitSignsDelete',
	},
}
