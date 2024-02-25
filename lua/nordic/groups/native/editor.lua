-- Notes and format from @folke/tokyonight.nvim.

local C = require 'nordic.colors'
local O = require('nordic.config').options

local groups = {
    Comment = { fg = C.comment, italic = O.italic_comments }, -- any comment
    ColorColumn = { bg = C.bg_visual }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = C.gray3 }, -- placeholder characters substituted for concealed text (see 'conceallevel')

    Cursor = { fg = C.black0, bg = C.fg }, -- character under the cursor
    lCursor = { fg = C.black0 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = C.black0 }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = C.bg_highlight, bold = O.cursorline.bold }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = C.bg_highlight, bold = O.cursorline.bold }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr = { fg = C.gray5, bold = O.cursorline.bold_number }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineSign = {},

    Directory = { fg = C.blue1 }, -- directory names (and other special names in listings)

    EndOfBuffer = { fg = C.fg_sidebar }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.

    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal

    ErrorMsg = { fg = C.error }, -- error messages on the command line

    VertSplit = { fg = C.border }, -- the column separating vertically split windows
    WinSeparator = { fg = C.border_fg, bg = C.border_bg }, -- the column separating vertically split windows

    Folded = { fg = C.fg_fold, bg = C.bg_fold }, -- line used for closed folds
    FoldColumn = { bg = C.bg_fold, fg = C.fg_fold }, -- 'foldcolumn'

    SignColumn = { bg = C.bg_sidebar, fg = C.fg_sidebar }, -- column where |signs| are displayed
    SignColumnSB = { bg = C.bg_sidebar, fg = C.fg_sidebar }, -- column where |signs| are displayed

    Substitute = { bg = C.red.base, fg = C.bg_dark }, -- |:substitute| replacement text highlighting

    LineNr = { fg = C.fg_sidebar }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.

    MatchParen = { underline = true, bold = true, sp = C.white1 }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|

    ModeMsg = { fg = C.fg, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = C.fg }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = C.blue1 }, -- |more-prompt|
    NonText = { fg = C.gray4 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.

    Normal = { fg = C.fg, bg = C.bg }, -- normal text
    NormalNC = { fg = C.fg, bg = C.bg }, -- normal text in non-current windows
    NormalSB = { fg = C.fg_sidebar, bg = C.bg_sidebar }, -- normal text in sidebar

    NormalFloat = { fg = C.fg_float, bg = C.bg_float }, -- Normal text in floating windows.
    FloatBorder = { fg = C.fg_float_border, bg = C.bg_float_border },
    FloatTitle = { fg = C.yellow.base },

    Pmenu = { bg = C.bg_popup }, -- Popup menu: normal item.
    PmenuSel = { bg = C.bg_selected }, -- Popup menu: selected item.
    PmenuSbar = { bg = C.gray2 }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = C.gray2, fg = C.gray2 }, -- Popup menu: Thumb of the scrollbar.

    Question = { fg = C.info }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = C.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

    Search = { bg = C.bg_float, fg = C.yellow.bright, bold = true, underline = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = C.yellow.base, fg = C.black0, bold = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = 'IncSearch' },

    SpecialKey = { fg = C.gray5 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|

    SpellBad = { sp = C.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = C.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = C.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = C.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

    StatusLine = { fg = C.fg_sidebar, bg = C.bg_statusline }, -- status line of current window
    StatusLineNC = { fg = C.gray4, bg = C.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

    TabLine = { bg = C.bg_statusline, fg = C.fg }, -- tab pages line, not active tab page label
    TabLineFill = { bg = C.black0, fg = C.none }, -- tab pages line, where there are no labels
    TabLineSel = { fg = C.fg_bright, bg = C.bg }, -- tab pages line, active tab page label

    Title = { fg = C.fg_bright, bold = true }, -- titles for output from ":set all", ":autocmd" etc.

    Visual = { bg = C.bg_visual, bold = O.cursorline.bold }, -- Visual mode selection
    VisualNOS = { bg = C.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".

    WarningMsg = { fg = C.warning }, -- warning messages
    Whitespace = { fg = C.gray4 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = C.bg_visual }, -- current match in 'wildmenu' completion

    WinBar = { bg = C.bg_dark, fg = C.gray5 },
    WinBarNC = { bg = C.bg_dark, fg = C.gray4 },
}

return groups
