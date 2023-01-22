local c = require 'nordic.colors'

return {

    GitSignsAdd = {
        fg = c.git.add,
        bg = c.bg_sidebar
    },

	GitSignsChange = {
        fg = c.git.change,
        bg = c.bg_sidebar
    },

	GitSignsDelete = {
        fg = c.git.delete,
        bg = c.bg_sidebar
    },

	GitSignsAddPreview = {
        link = "GitSignsAdd"
    },

	GitSignsDeletePreview = {
        link = "GitSignsDelete"
    },
}
