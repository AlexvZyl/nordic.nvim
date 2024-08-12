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

-- tests for changes in palette should check highlights (to make sure everything is applied)

-- on_palette
assert_eq(highlight('Normal').bg, '#242933', 'on_palette: all highlights that use `gray0` should be `#242933` by default')
load({ on_palette = function(palette) palette.gray0 = '#FFFFFF' end })
assert_eq(highlight('Normal').bg, '#FFFFFF', 'on_platte: changing a color should cascade to all highlights that use it')
load({ on_palette = function(_palette) end })
assert_eq(highlight('Normal').bg, '#242933', 'on_palette: reloading should revert the palette to its original state')

-- after_palette
assert_eq(highlight('Normal').bg, '#242933', 'after_palette: all highlights that use `bg` should be `#242933` by default')
load({ after_palette = function(palette) palette.bg = '#FFFFFF' end })
assert_eq(highlight('Normal').bg, '#FFFFFF',
  'after_platte: changing a color should cascade to all highlights that use it')
load({ after_palette = function(_palette) end })
assert_eq(highlight('Normal').bg, '#242933', 'after_palette: reloading should revert the palette to its original state')

-- on_highlight
assert_eq(highlight('Normal').bg, '#242933', 'on_highlight: `Normal` should be `#242933` by default')
load({ on_highlight = function(highlights, _palette) highlights['Normal'].bg = '#FFFFFF' end })
assert_eq(highlight('Normal').bg, '#FFFFFF', 'on_highlight: changing a highlight should actually change the highlight')
load({ on_highlight = function(_highlights, _palette) end })
assert_eq(highlight('Normal').bg, '#242933',
  'on_highlight: reloading should revert all highlights to their original state')

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

-- transparent
-- bg
assert_eq(highlight('Normal').bg ~= nil, true, 'highlight `Normal.bg` should not be `nil` by default')
load({ transparent = { bg = true } })
assert_eq(highlight('Normal').bg, nil, 'highlight `Normal.bg` should be `nil` if `transparent.bg` is true')
load({ transparent = { bg = false } })
-- float
assert_eq(highlight('NormalFloat').bg ~= nil, true, 'highlight `NormalFloat.bg` should not be `nil` by default')
load({ transparent = { float = true } })
assert_eq(highlight('NormalFloat').bg, nil, 'highlight `NormalFloat.bg` should be `nil` if `transparent.float` is true')
load({ transparent = { float = false } })
