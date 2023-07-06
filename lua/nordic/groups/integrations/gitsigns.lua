local C = require 'nordic.colors'
local O = require('nordic.config').options

return {

    GitSignsAdd = { fg = C.git.add, bg = O.transparent_bg and C.none or C.bg_sidebar },
    GitSignsChange = { fg = C.git.change, bg = O.transparent_bg and C.none or C.bg_sidebar },
    GitSignsDelete = { fg = C.git.delete, bg = O.transparent_bg and C.none or C.bg_sidebar },

    GitSignsAddPreview = { link = 'GitSignsAdd' },
    GitSignsDeletePreview = { link = 'GitSignsDelete' },
}
