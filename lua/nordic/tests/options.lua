local assert_eq = require('nordic.tests').assert_eq
local load = require('nordic').load
local U = require('nordic.utils')

local function highlight(group)
    return vim.api.nvim_get_hl(0, { name = group, create = false })
end


load({})

-- italic_comments
assert_eq(highlight('Comment').italic, true, 'highlight `Comments` should be italic by default')
load({italic_comments = false})
assert_eq(highlight('Comment').italic, nil, 'highlight `Comments` should not be italic if `italic_comments` is false')
load({italic_comments = true})
