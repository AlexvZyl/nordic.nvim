local C = require 'nordic.colors'

return {

    WhichKey = { fg = C.yellow.base },
    WhichKeyFloat = { bg = C.bg_float },
    WhichKeyDesc = { fg = C.white0 },
    WhichKeyGroup = { fg = C.orange.bright, bold = true },
    WhichKeyBorder = { fg = C.black0, bg = C.bg_float },

    -- TODO: Unsure.
    WhichKeySeperator = {},
    WhichKeyValue = {},
}
