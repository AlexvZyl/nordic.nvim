local c = require 'nordic.colors'

return {

    WhichKey = {
        fg = c.yellow.base,
    },

    WhichKeyFloat = {
        bg = c.black,
    },

    WhichKeyDesc = {
        fg = c.white0,
    },

    WhichKeyGroup = {
        fg = c.orange.bright,
        bold = true,
    },

    WhichKeyBorder = {
        fg = c.black,
    },

    -- TODO: Unsure.
    WhichKeySeperator = {},
    WhichKeyValue = {},
}
