local assert_eq = require('nordic.utils').assert_eq

-- Issue #195: tree-sitter TODO captures should use the visible native Todo style.
require('nordic').load({})
assert_eq(
    vim.api.nvim_get_hl(0, { name = '@comment.todo', link = true }),
    { link = 'Todo' },
    'issue #195: @comment.todo should link to Todo'
)

-- Issue #196: Ghostty follows the standard ANSI order: index 5 is magenta, 6 is cyan.
local palette = require('nordic.colors')
local ghostty = require('nordic.platforms.ghostty').generate(palette)
local magenta = ghostty:match('palette = 5=([^\r\n]+)')
local cyan = ghostty:match('palette = 6=([^\r\n]+)')
assert_eq(magenta, palette.magenta.base, 'issue #196: Ghostty palette index 5 should be magenta')
assert_eq(cyan, palette.cyan.base, 'issue #196: Ghostty palette index 6 should be cyan')
