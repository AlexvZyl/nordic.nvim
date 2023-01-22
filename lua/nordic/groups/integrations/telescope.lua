local c = require 'nordic.colors'

return {

    TelescopePromptNormal = {
        bg = c.gray1
    },

    TelescopePromptBorder = {
        fg = c.gray1,
        bg = c.gray1
    },

    TelescopeResultsNormal = {
        bg = c.black
    },

    TelescopeResultsBorder = {
        fg = c.black,
        bg = c.black
    },

    TelescopePreviewNormal = {
        bg = c.black
    },

    TelescopePreviewBorder = {
        fg = c.black,
        bg = c.black
    },

    TelescopeTitle = {
        bg = c.orange.base,
        fg = c.black,
        bold = true
    },

    TelescopeSelection = {
        bg = c.bg_selected,
        fg = c.fg_selected
    },

    TelescopeSelectionCaret = {
        fg = c.yellow.bright,
        bg = c.gray1,
        bold = true,
    },

    TelescopeBorder = {
        fg = c.border_float,
        bg = c.bg_float
    },

	TelescopeMatching = {
        fg = c.green.bright,
        bold = true
    },

	TelescopePromptPrefix = {
        bg = c.gray1,
        fg = c.orange.bright
    },

	TelescopePromptTitle = {
        fg = c.black,
        bg = c.orange.base
    },

	TelescopeResultsTitle = {
        fg = c.black,
        bg = c.orange.base
    },

	TelescopePreviewTitle = {
        fg = c.black,
        bg = c.orange.base
    },

}
