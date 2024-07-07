local assert_eq = require('nordic.tests').assert_eq
local load = require('nordic').load
local U = require('nordic.utils')

local function highlight(group)
  local function hexify(value)
    if type(value) == 'number' then
      return string.format('#%X', value)
    elseif type(value) == 'table' then
      return vim.tbl_map(hexify, value)
    end
    return value
  end

  return hexify(vim.api.nvim_get_hl(0, { name = group, create = false }))
end

load({})

-- bold_keywords
assert_eq(highlight('Keyword').bold, nil, 'highlight `Keyword` should not be bold by default')
load({ bold_keywords = true })
assert_eq(highlight('Keyword').bold, true, 'highlight `Keyword` should be bold if `bold_keywords` is true')
load({ bold_keywords = false })

-- italic_comments
assert_eq(highlight('Comment').italic, true, 'highlight `Comments` should be italic by default')
load({ italic_comments = false })
assert_eq(highlight('Comment').italic, nil, 'highlight `Comments` should not be italic if `italic_comments` is false')
load({ italic_comments = true })
