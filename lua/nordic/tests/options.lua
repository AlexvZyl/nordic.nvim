local base_palette = require('nordic.colors.nordic')

local assert_eq = require('nordic.utils').assert_eq
local load = require('nordic').load
local get_highlight = require('nordic.utils').get_highlight

load({})

-- Tests for changes in palette should check highlights (to make sure everything is applied)

-- on_palette
assert_eq(
    get_highlight('Normal').bg,
    base_palette.gray0,
    'on_palette: all highlights that use `gray0` should be `gray0` by default'
)
load({
    on_palette = function(palette)
        palette.gray0 = '#FFFFFF'
    end,
})
assert_eq(
    get_highlight('Normal').bg,
    '#FFFFFF',
    'on_platte: changing a color should cascade to all highlights that use it'
)
load({ on_palette = function(_) end })
assert_eq(
    get_highlight('Normal').bg,
    base_palette.gray0,
    'on_palette: reloading should revert the palette to its original state'
)

-- after_palette
assert_eq(
    get_highlight('Normal').bg,
    base_palette.gray0,
    'after_palette: all highlights that use `bg` should be `gray0` by default'
)
load({
    after_palette = function(palette)
        palette.bg = '#FFFFFF'
    end,
})
assert_eq(
    get_highlight('Normal').bg,
    '#FFFFFF',
    'after_platte: changing a color should cascade to all highlights that use it'
)
load({ after_palette = function(_) end })
assert_eq(
    get_highlight('Normal').bg,
    base_palette.gray0,
    'after_palette: reloading should revert the palette to its original state'
)

-- on_highlight
assert_eq(get_highlight('Normal').bg, base_palette.gray0, 'on_highlight: `Normal` should be `gray0` by default')
load({
    on_highlight = function(highlights, _)
        highlights['Normal'].bg = '#FFFFFF'
    end,
})
assert_eq(
    get_highlight('Normal').bg,
    '#FFFFFF',
    'on_highlight: changing a highlight should actually change the highlight'
)
load({ on_highlight = function(_, _) end })
assert_eq(
    get_highlight('Normal').bg,
    base_palette.gray0,
    'on_highlight: reloading should revert all highlights to their original state'
)

-- bold_keywords
assert_eq(get_highlight('Keyword').bold, nil, 'bold_keywords: highlight `Keyword` should not be bold by default')
load({ bold_keywords = true })
assert_eq(
    get_highlight('Keyword').bold,
    true,
    'bold_keywords: highlight `Keyword` should be bold if `bold_keywords` is true'
)
load({ bold_keywords = false })

-- italic_comments
assert_eq(get_highlight('Comment').italic, true, 'italic_comments: highlight `Comments` should be italic by default')
load({ italic_comments = false })
assert_eq(
    get_highlight('Comment').italic,
    nil,
    'italic_comments: highlight `Comments` should not be italic if `italic_comments` is false'
)
load({ italic_comments = true })

-- transparent
-- bg
assert_eq(get_highlight('Normal').bg ~= nil, true, 'transparent: highlight `Normal.bg` should not be `nil` by default')
load({ transparent = { bg = true } })
assert_eq(
    get_highlight('Normal').bg,
    nil,
    'transparent: highlight `Normal.bg` should be `nil` if `transparent.bg` is true'
)
load({ transparent = { bg = false } })
-- float
assert_eq(
    get_highlight('NormalFloat').bg ~= nil,
    true,
    'transparent: highlight `NormalFloat.bg` should not be `nil` by default'
)
load({ transparent = { float = true } })
assert_eq(
    get_highlight('NormalFloat').bg,
    nil,
    'transparent: highlight `NormalFloat.bg` should be `nil` if `transparent.float` is true'
)
load({ transparent = { float = false } })

-- bright_border
assert_eq(
    get_highlight('WinSeparator').fg,
    base_palette.black0,
    'bright_border: all highlights that use `border_fg` should be `black0` by default'
)
load({ bright_border = true })
-- NOTE: This will fail if the wrong white0 variant is used
assert_eq(
    get_highlight('WinSeparator').fg,
    base_palette.white0_reduce_blue,
    'bright_border: all highlights that use `border_fg` should be `white0_reduce_blue` if `bright_border` is true'
)
load({ bright_border = false })

-- reduced_blue
assert_eq(
    get_highlight('Normal').fg,
    base_palette.white0_reduce_blue,
    'reduced_blue: all highlights that use `white0` should be `white0_reduce_blue` by default'
)
load({ reduced_blue = false })
assert_eq(
    get_highlight('Normal').fg,
    base_palette.white0_normal,
    'reduced_blue: all highlights that use `white0` should be `white0_normal` if `reduced_blue` is false'
)
load({ reduced_blue = true })

-- swap_backgrounds
-- NOTE: This will fail if any transparent settings are set
assert_eq(
    get_highlight('Normal').bg,
    base_palette.gray0,
    'swap_backgrounds: all highlights that use `bg` should be `gray0` by default'
)
assert_eq(
    get_highlight('NormalFloat').bg,
    base_palette.black1,
    'swap_backgrounds: all highlights that use `bg_float` should be `black1` by default'
)
load({ swap_backgrounds = true })
assert_eq(
    get_highlight('Normal').bg,
    base_palette.black1,
    'swap_backgrounds: all highlights that use `bg` should be `black1` if `swap_backgrounds` is true'
)
assert_eq(
    get_highlight('NormalFloat').bg,
    base_palette.gray0,
    'swap_backgrounds: all highlights that use `bg_float` should be `gray0` if `swap_backgrounds` is true'
)
load({ swap_backgrounds = false })

-- cursorline
-- bold
assert_eq(get_highlight('CursorLine').bold, nil, 'cursorline: highlight `CursorLine` should not be bold by default')
load({ cursorline = { bold = true } })
assert_eq(
    get_highlight('CursorLine').bold,
    true,
    'cursorline: highlight `CursorLine` should be bold if `cursorline.bold` is true'
)
load({ cursorline = { bold = false } })
-- bold_number
assert_eq(get_highlight('CursorLineNr').bold, true, 'cursorline: highlight `CursorLineNr` should be bold by default')
load({ cursorline = { bold_number = false } })
assert_eq(
    get_highlight('CursorLineNr').bold,
    nil,
    'cursorline: highlight `CursorLineNr` should not be bold if `cursorline.bold_number` is false'
)
load({ cursorline = { bold_number = true } })
-- theme
load({ cursorline = { blend = 1 } })
assert_eq(
    get_highlight('CursorLine').bg,
    base_palette.black0,
    'cursorline: highlight `CursorLine` should be `black0` with the default theme'
)
load({ cursorline = { theme = 'light' } })
assert_eq(
    get_highlight('CursorLine').bg,
    base_palette.gray2,
    'cursorline: highlight `CursorLine` should be `gray2` if `cursorline.theme` is `light`'
)
load({ cursorline = { theme = 'dark' } })
assert_eq(
    get_highlight('CursorLine').bg,
    base_palette.black0,
    'cursorline: highlight `CursorLine` should be `black0` if `cursorline.theme` is `dark`'
)
-- blend
load({ cursorline = { blend = 1 } })
assert_eq(
    get_highlight('CursorLine').bg,
    base_palette.black0,
    'cursorline: highlight `CursorLine` should be `black0` if `cursorline.blend` is 1'
)
load({ cursorline = { blend = 0.5 } })
local blend = require('nordic.utils').blend
assert_eq(
    get_highlight('CursorLine').bg,
    blend(base_palette.black0, base_palette.gray0, 0.5),
    'cursorline: highlight `CursorLine` should be `#1F232C` if `cursorline.blend` is 0.5'
)
load({ cursorline = { blend = 0 } })
assert_eq(
    get_highlight('CursorLine').bg,
    base_palette.gray0,
    'cursorline: highlight `CursorLine` should be `gray0` if `cursorline.blend` is 0'
)

-- noice.style
assert_eq(
    get_highlight('NoiceCmdline').bg,
    base_palette.gray0,
    'noice: highlight `NoiceCmdline` should be `gray0` by default'
)
load({ noice = { style = 'flat' } })
assert_eq(
    get_highlight('NoiceCmdline').bg,
    base_palette.black0,
    'noice: highlight `NoiceCmdline` should be `black0` if `noice.style` is `flat`'
)
load({ noice = { style = 'classic' } })
assert_eq(
    get_highlight('NoiceCmdline').bg,
    base_palette.gray0,
    'noice: highlight `NoiceCmdline` should be `gray0` if `noice.style` is `classic`'
)

-- telescope.style
assert_eq(
    get_highlight('TelescopeNormal').bg,
    base_palette.black1,
    'telescope: highlight `TelescopeNormal` should be `black1` by default'
)
load({ telescope = { style = 'classic' } })
assert_eq(
    get_highlight('TelescopeNormal').bg,
    base_palette.gray0,
    'telescope: highlight `TelescopeNormal` should be `gray0` if `telescope.style` is `classic`'
)
load({ telescope = { style = 'flat' } })
assert_eq(
    get_highlight('TelescopeNormal').bg,
    base_palette.black1,
    'telescope: highlight `TelescopeNormal` should be `black1` if `telescope.style` is `flat`'
)

-- leap.dim_backdrop
assert_eq(get_highlight('LeapBackdrop').fg, nil, 'leap: highlight `LeapBackdrop` should be `nil` by default')
load({ leap = { dim_backdrop = true } })
assert_eq(
    get_highlight('LeapBackdrop').fg,
    base_palette.gray4,
    'leap: highlight `LeapBackdrop` should be `gray4` if `leap.dim_backdrop` is true'
)
load({ leap = { dim_backdrop = false } })

-- ts_context.dark_background
assert_eq(
    get_highlight('TreesitterContext').bg,
    base_palette.black1,
    'ts_context: highlight `TreesitterContext` should be `black1` by default'
)
load({ ts_context = { dark_background = false } })
assert_eq(
    get_highlight('TreesitterContext').bg,
    base_palette.gray1,
    'ts_context: highlight `TreesitterContext` should be `gray1` if `ts_context.dark_background` is false'
)
load({ ts_context = { dark_background = true } })
