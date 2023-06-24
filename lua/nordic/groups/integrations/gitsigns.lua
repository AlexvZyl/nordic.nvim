local c = require 'nordic.colors'
local o = require('nordic.config').options

return {

    GitSignsAdd = { fg = c.git.add, bg = o.transparent_bg and c.none or c.bg_sidebar },
    GitSignsChange = { fg = c.git.change, bg = o.transparent_bg and c.none or c.bg_sidebar },
    GitSignsDelete = { fg = c.git.delete, bg = o.transparent_bg and c.none or c.bg_sidebar },

    GitSignsAddPreview =  { link = 'GitSignsAdd' },
    GitSignsDeletePreview = { link = 'GitSignsDelete' },

}
