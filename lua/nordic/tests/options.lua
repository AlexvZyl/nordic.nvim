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

-- bright_border
assert_eq(highlight('WinSeparator').fg, '#191D24',
  'bright_border: all highlights that use `border_fg` should be `#191D24` by default')
load({ bright_border = true })
-- note: this could fail if the wrong white0 variant is used
assert_eq(highlight('WinSeparator').fg, '#C0C8D8',
  'bright_border: all highlights that use `border_fg` should be `#C0C8D8` if `bright_border` is true')
load({ bright_border = false })

-- reduced_blue
assert_eq(highlight('Normal').fg, '#C0C8D8',
  'reduced_blue: all highlights that use `white0` should be `#C0C8D8` by default')
load({ reduced_blue = false })
assert_eq(highlight('Normal').fg, '#BBC3D4',
  'reduced_blue: all highlights that use `white0` should be `#BBC3D4` if `reduced_blue` is false')
load({ reduced_blue = true })

-- swap_backgrounds
-- note: this could fail if any transparent settings are set
assert_eq(highlight('Normal').bg, '#242933',
  'swap_backgrounds: all highlights that use `bg` should be `#242933` by default')
assert_eq(highlight('NormalFloat').bg, '#1E222A',
  'swap_backgrounds: all highlights that use `bg_float` should be `#1E222A` by default')
load({ swap_backgrounds = true })
assert_eq(highlight('Normal').bg, '#1E222A',
  'swap_backgrounds: all highlights that use `bg` should be `#1E222A` if `swap_backgrounds` is true')
assert_eq(highlight('NormalFloat').bg, '#242933',
  'swap_backgrounds: all highlights that use `bg_float` should be `#242933` if `swap_backgrounds` is true')
load({ swap_backgrounds = false })

-- cursorline
-- bold
assert_eq(highlight('CursorLine').bold, nil, 'cursorline: highlight `CursorLine` should not be bold by default')
load({ cursorline = { bold = true } })
assert_eq(highlight('CursorLine').bold, true,
  'cursorline: highlight `CursorLine` should be bold if `cursorline.bold` is true')
load({ cursorline = { bold = false } })
-- bold_number
assert_eq(highlight('CursorLineNr').bold, true, 'cursorline: highlight `CursorLineNr` should be bold by default')
load({ cursorline = { bold_number = false } })
assert_eq(highlight('CursorLineNr').bold, nil,
  'cursorline: highlight `CursorLineNr` should not be bold if `cursorline.bold_number` is false')
load({ cursorline = { bold_number = true } })
-- theme
load({ cursorline = { blend = 1 } })
assert_eq(highlight('CursorLine').bg, '#191D24',
  'cursorline: highlight `CursorLine` should be `#191D24` with the default theme')
load({ cursorline = { theme = 'light' } })
assert_eq(highlight('CursorLine').bg, '#3B4252',
  'cursorline: highlight `CursorLine` should be `#3B4252` if `cursorline.theme` is `light`')
load({ cursorline = { theme = 'dark' } })
assert_eq(highlight('CursorLine').bg, '#191D24',
  'cursorline: highlight `CursorLine` should be `#191D24` if `cursorline.theme` is `dark`')
-- blend
load({ cursorline = { blend = 1 } })
assert_eq(highlight('CursorLine').bg, '#191D24',
  'cursorline: highlight `CursorLine` should be `#191D24` if `cursorline.blend` is 1')
load({ cursorline = { blend = 0.5 } })
assert_eq(highlight('CursorLine').bg, '#1F232C',
  'cursorline: highlight `CursorLine` should be `#1F232C` if `cursorline.blend` is 0.5')
load({ cursorline = { blend = 0 } })
assert_eq(highlight('CursorLine').bg, '#242933',
  'cursorline: highlight `CursorLine` should be `#242933` if `cursorline.blend` is 0')

-- noice
assert_eq(highlight('NoiceCmdline').bg, '#242933', 'noice: highlight `NoiceCmdline` should be `#242933` by default')
load({ noice = { style = 'flat' } })
assert_eq(highlight('NoiceCmdline').bg, '#191D24',
  'noice: highlight `NoiceCmdline` should be `#191D24` if `noice.style` is `flat`')
load({ noice = { style = 'classic' } })
assert_eq(highlight('NoiceCmdline').bg, '#242933',
  'noice: highlight `NoiceCmdline` should be `#242933` if `noice.style` is `classic`')

-- telescope
assert_eq(highlight('TelescopeNormal').bg, '#1E222A',
  'telescope: highlight `TelescopeNormal` should be `#1E222A` by default')
load({ telescope = { style = 'classic' } })
assert_eq(highlight('TelescopeNormal').bg, '#242933',
  'telescope: highlight `TelescopeNormal` should be `#242933` if `telescope.style` is `classic`')
load({ telescope = { style = 'flat' } })
assert_eq(highlight('TelescopeNormal').bg, '#1E222A',
  'telescope: highlight `TelescopeNormal` should be `#1E222A` if `telescope.style` is `flat`')

-- leap
assert_eq(highlight('LeapBackdrop'), {}, 'leap: highlight `LeapBackdrop` should be `{}` by default')
load({ leap = { dim_backdrop = true } })
assert_eq(highlight('LeapBackdrop').fg, '#4C566A',
  'leap: highlight `LeapBackdrop` should be `#4C566A` if `leap.dim_backdrop` is true')
load({ leap = { dim_backdrop = false } })
