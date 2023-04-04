local c = require 'nordic.colors'
local o = require('nordic.config').options

if o.ts_context.brighter_background then
    return {
        TreesitterContext = { bg = c.gray1 },

        TreesitterContextLineNumber = { fg = c.gray4, bg = c.gray1 },
    }
else
    return {
        TreesitterContext = { bg = c.black },

        TreesitterContextLineNumber = { fg = c.gray1, bg = c.black },
    }
end
