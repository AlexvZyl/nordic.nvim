local c = require 'nordic.colors'
local o = require('nordic.config').options

local bg
local fg
if o.ts_context.brighter_background then
    bg = c.gray1
    fg = c.gray4
else
    bg = c.black
    fg = c.gray1
end

return {
    TreesitterContext = { bg = bg },
    TreesitterContextLineNumber = { fg = fg, bg = bg },
}
