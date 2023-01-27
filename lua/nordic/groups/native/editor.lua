-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'
local o = require('nordic.config').options

if o.cursorline.theme == 'light' then
    c.bg_highlight = c.gray1
    c.bg_visual = c.gray1
end

return {

	Comment = {
		fg = c.comment,
		italic = o.italic_comments,
	}, -- any comment

	ColorColumn = {
		bg = c.bg_visual,
	}, -- used for the columns set with 'colorcolumn'

	Conceal = {
		fg = c.gray3,
	}, -- placeholder characters substituted for concealed text (see 'conceallevel')

	Cursor = {
		fg = c.bg,
		bg = c.fg,
	}, -- character under the cursor

	lCursor = {
		fg = c.bg,
		bg = c.fg,
	}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')

	CursorIM = {
		fg = c.bg,
		bg = c.fg,
	}, -- like Cursor, but used when in IME mode |CursorIM|

	CursorColumn = {
		bg = c.bg_highlight,
        bold = o.cursorline.bold
	}, -- Screen-column at the cursor, when 'cursorcolumn' is set.

	CursorLine = {
		bg = c.bg_highlight,
        bold = o.cursorline.bold
	}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.

	Directory = {
		fg = c.blue1,
	}, -- directory names (and other special names in listings)

	EndOfBuffer = {
		fg = c.gray1,
	}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

	-- TermCursor  = { }, -- cursor in a focused terminal
	-- TermCursorNC= { }, -- cursor in an unfocused terminal

	ErrorMsg = {
		fg = c.error,
	}, -- error messages on the command line

	VertSplit = {
		fg = c.border,
	}, -- the column separating vertically split windows

	WinSeparator = {
		fg = c.border,
		bold = true,
	}, -- the column separating vertically split windows

	-- TODO: Note sure if this will look good.
	Folded = {
		fg = c.gray5,
		bg = c.fg_gutter,
	}, -- line used for closed folds

	-- TODO: Note sure if this will look good.
	FoldColumn = {
		bg = c.bg,
		fg = c.comment,
	}, -- 'foldcolumn'

	SignColumn = {
		bg = o.transparent_bg and c.none or c.bg,
		fg = c.fg_gutter,
	}, -- column where |signs| are displayed

	SignColumnSB = {
		bg = c.bg_sidebar,
		fg = c.fg_gutter,
	}, -- column where |signs| are displayed

	Substitute = {
		bg = c.red.base,
		fg = c.bg_dark,
	}, -- |:substitute| replacement text highlighting

	LineNr = {
		fg = c.fg_gutter,
	}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.

	CursorLineNr = {
		fg = c.gray5,
		bold = true,
	}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

	MatchParen = {
		fg = c.yellow.bright,
		bold = true,
	}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

	ModeMsg = {
		fg = c.fg,
		bold = true,
	}, -- 'showmode' message (e.g., "-- INSERT -- ")

	MsgArea = {
		fg = c.fg,
	}, -- Area for messages and cmdline

	-- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'

	MoreMsg = {
		fg = c.blue1,
	}, -- |more-prompt|

	NonText = {
		fg = c.gray4,
	}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.

	Normal = {
		fg = c.fg,
		bg = o.transparent_bg and c.none or c.bg,
	}, -- normal text

	NormalNC = {
		fg = c.fg,
		bg = o.transparent_bg and c.none or c.bg,
	}, -- normal text in non-current windows

	NormalSB = {
		fg = c.fg_sidebar,
		bg = o.transparent_bg and c.none or c.bg_sidebar,
	}, -- normal text in sidebar

	NormalFloat = {
		fg = c.fg_float,
		bg = c.bg_float,
	}, -- Normal text in floating windows.

	FloatBorder = {
		fg = c.border_float,
		bg = c.bg_float,
	},

	Pmenu = {
		bg = c.bg_popup,
		fg = c.fg,
	}, -- Popup menu: normal item.

	PmenuSel = {
		bg = c.bg_selected,
		fg = c.fg_selected,
		bold = true,
	}, -- Popup menu: selected item.

	PmenuSbar = {
		bg = c.bg_popup,
	}, -- Popup menu: scrollbar.

	PmenuThumb = {
		bg = c.fg_gutter,
	}, -- Popup menu: Thumb of the scrollbar.

	Question = {
		fg = c.info,
	}, -- |hit-enter| prompt and yes/no questions

	QuickFixLine = {
		bg = c.bg_visual,
		bold = true,
	}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

	Search = {
		bg = c.bg_search,
		fg = c.fg,
	}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.

	IncSearch = {
		bg = c.orange.base,
		fg = c.black,
	}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"

	CurSearch = {
		link = 'IncSearch',
	},

	SpecialKey = {
		fg = c.gray5,
	}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|

	SpellBad = {
		sp = c.error,
		undercurl = true,
	}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.

	SpellCap = {
		sp = c.warning,
		undercurl = true,
	}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.

	SpellLocal = {
		sp = c.info,
		undercurl = true,
	}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.

	SpellRare = {
		sp = c.hint,
		undercurl = true,
	}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

	StatusLine = {
		fg = c.fg_sidebar,
		bg = c.bg_statusline,
	}, -- status line of current window

	StatusLineNC = {
		fg = c.fg_gutter,
		bg = c.bg_statusline,
	}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

	TabLine = {
		bg = c.bg_statusline,
		fg = c.fg_gutter,
	}, -- tab pages line, not active tab page label

	TabLineFill = {
		bg = c.black,
	}, -- tab pages line, where there are no labels

	TabLineSel = {
		fg = c.fg_bright,
		bg = c.gray0,
	}, -- tab pages line, active tab page label

	Title = {
		fg = c.fg_bright,
		bold = true,
	}, -- titles for output from ":set all", ":autocmd" etc.

	Visual = {
		bg = c.bg_visual,
		bold = true,
	}, -- Visual mode selection

	VisualNOS = {
		bg = c.bg_visual,
	}, -- Visual mode selection when vim is "Not Owning the Selection".

	WarningMsg = {
		fg = c.warning,
	}, -- warning messages

	Whitespace = {
		fg = c.fg_gutter,
	}, -- "nbsp", "space", "tab" and "trail" in 'listchars'

	WildMenu = {
		bg = c.bg_visual,
	}, -- current match in 'wildmenu' completion
}
