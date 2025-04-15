local M = {}

-- Some of these groups are not listed as default vim groups, but they
-- are defacto standard group names for syntax highlighting.  Commented
-- out groups should chain up to their "preferred" group by default.
-- Uncomment and edit if you want more specific syntax highlighting.

function M.get_groups()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    ---@class NativeHighlights
    local G = {}

    -- SYNTAX

    G.Constant = { fg = C.magenta.bright } -- (preferred) any constant
    G.Number = { link = 'Constant' } --   a number constant: 234  0xff
    G.Boolean = { link = 'Number' } --  a boolean constant: TRUE  false
    G.Float = { link = 'Number' } --    a floating point constant: 2.3e10
    G.None = { fg = C.none, bg = C.none }
    G.String = { fg = C.green.base } --   a string constant: "this is a string"
    G.Character = { fg = C.green.base } --  a character constant: 'c', '\n'
    G.Variable = { fg = C.fg }
    G.Namespace = { fg = C.yellow.dim }
    G.Field = { fg = C.cyan.base }
    G.Title = { fg = C.yellow.base }
    G.Builtin = { fg = C.blue0 }
    G.Identifier = { fg = C.fg } -- (preferred) any variable name
    G.Function = { fg = C.blue2 } -- function name (also: methods for classes)
    G.Keyword = { fg = C.orange.base, bold = O.bold_keywords } --  any other keyword
    G.Statement = { link = 'Keyword' } -- (preferred) any statement
    G.Conditional = { link = 'Keyword' } --  if, then, else, endif, switch, etc.
    G.Repeat = { link = 'Keyword' } --   for, do, while, etc.
    G.Label = { link = 'Keyword' } --    case, default, etc.
    G.Operator = { fg = C.fg } -- "sizeof", "+", "*", etc.
    G.Macro = { fg = C.red.base } -- same as Define
    G.Exception = { link = 'Macro' } --  try, catch, throw
    G.PreProc = { link = 'Macro' } -- (preferred) generic preprocessor
    G.Include = { link = 'Macro' } --  preprocessor #include
    G.Define = { link = 'Macro' } --   preprocessor #define
    G.PreCondit = { link = 'Macro' } --  preprocessor #if, #else, #endif, etc.
    G.Comment = { fg = C.gray4, italic = O.italic_comments }
    G.Type = { fg = C.yellow.base } -- (preferred) int, long, char, etc.
    G.StorageClass = { link = 'Keyword' } -- static, register, volatile, etc.
    G.Structure = { link = 'Type' } --  struct, union, enum, etc.
    G.Typedef = { link = 'Type' } --  A typedef
    G.Special = { fg = C.blue1 } -- (preferred) any special symbol
    -- SpecialChar   = { } --  special character in a constant
    -- Tag           = { } --    you can use CTRL-] on this
    G.Delimiter = { italic = true, fg = C.gray5 } --  character that needs attention
    -- SpecialComment= { } -- special things inside a comment
    -- Debug         = { } --    debugging statements
    G.Underlined = { underline = true } -- (preferred) text that stands out, HTML links
    G.Bold = { bold = true }
    G.Italic = { italic = true }
    -- ("Ignore", below, may be invisible...)
    G.Ignore = { fg = C.gray2 } -- (preferred) left blank, hidden  |hl-Ignore|
    G.Error = { fg = C.error } -- (preferred) any erroneous construct
    G.Todo = { bg = C.yellow.dim, fg = C.black0 } -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    G.Note = { fg = C.black0, bg = C.info }
    -- What are these?
    G.qfLineNr = { fg = C.gray4 }
    G.qfFileName = { fg = C.blue1 }
    G.htmlH1 = { fg = C.yellow.base, bold = true }
    G.htmlH2 = { fg = C.orange.base }
    G.Link = { fg = C.blue1, underline = true }
    G.CodeBlock = { bg = C.bg_float, fg = C.fg }
    G.mkdHeading = { link = 'htmlH1' }
    G.mkdCode = { link = 'CodeBlock' }
    G.mkdCodeDelimiter = { link = 'CodeBlock' }
    G.mkdCodeStart = { fg = C.cyan.base, bold = true }
    G.mkdCodeEnd = { fg = C.cyan.base, bold = true }
    G.mkdLink = { link = 'Link' }
    G.markdownHeadingDelimiter = { link = 'mkdHeading' }
    G.markdownCode = { link = 'CodeBlock' }
    G.markdownCodeBlock = { link = 'CodeBlock' }
    G.markdownH1 = { link = 'htmlH1' }
    G.markdownH2 = { link = 'htmlH2' }
    G.markdownLinkText = { link = 'Link' }
    G['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true }
    G['@text.todo.unchecked'] = { fg = C.blue1 } -- For brackets and parens.
    G['@text.todo.checked'] = { fg = C.green.base } -- For brackets and parens.
    G['@text.literal.markdown_inline'] = { bg = C.black0, fg = C.blue1 }
    G['@text.literal.markdown'] = { link = 'Normal' }
    G['helpCommand'] = { bg = C.black0, fg = C.blue1 }
    G.debugPC = { bg = C.bg_sidebar } -- used for highlighting the current line in terminal-debug
    G.debugBreakpoint = { fg = C.red.bright } -- used for breakpoint colors in terminal-debug

    -- LANGUAGE SERVER PROTOCOL

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    G.LspReferenceText = { bg = C.fg_gutter } -- used for highlighting "text" references
    G.LspReferenceRead = { bg = C.fg_gutter } -- used for highlighting "read" references
    G.LspReferenceWrite = { bg = C.fg_gutter } -- used for highlighting "write" references
    G.DiagnosticError = { fg = C.error } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    G.DiagnosticWarn = { fg = C.warning } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    G.DiagnosticInfo = { fg = C.info } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    G.DiagnosticHint = { fg = C.hint } -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    G.DiagnosticVirtualTextError = { bg = C.gray1, fg = C.error, bold = true } -- Used for "Error" diagnostic virtual text
    G.DiagnosticVirtualTextWarn = { bg = C.gray1, fg = C.warning } -- Used for "Warning" diagnostic virtual text
    G.DiagnosticVirtualTextWarning = { bg = C.gray1, fg = C.warning } -- Used for "Warning" diagnostic virtual text
    G.DiagnosticVirtualTextInfo = { bg = C.gray1, fg = C.info } -- Used for "Information" diagnostic virtual text
    G.DiagnosticVirtualTextHint = { bg = C.gray1, fg = C.hint } -- Used for "Hint" diagnostic virtual text
    G.DiagnosticUnderlineError = { undercurl = true, sp = C.error } -- Used to underline "Error" diagnostics
    G.DiagnosticUnderlineWarn = { undercurl = true, sp = C.warning } -- Used to underline "Warning" diagnostics
    G.DiagnosticUnderlineInfo = { undercurl = true, sp = C.info } -- Used to underline "Information" diagnostics
    G.DiagnosticUnderlineHint = { undercurl = true, sp = C.hint } -- Used to underline "Hint" diagnostics
    G.DiagnosticText = { bg = C.bg_float }
    G.LspSignatureActiveParameter = { bg = C.bg_float, underline = true, bold = true }
    G.LspCodeLens = { fg = C.comment }
    G.LspInfoBorder = { link = 'FloatBorder' }
    G.ALEErrorSign = { fg = C.error }
    G.ALEWarningSign = { fg = C.warning }

    -- Tree Groups
    G.TreeNormal = { fg = C.fg, bg = C.bg }
    G.TreeNormalNC = { fg = C.fg, bg = C.bg }
    G.TreeRootName = { fg = C.fg, bold = true }
    G.TreeFileIcon = { fg = C.blue2 }
    G.TreeFileNameOpened = { fg = C.fg }
    G.TreeSpecialFile = { fg = C.magenta.bright }
    G.TreeGitConflict = { fg = C.red.base }
    G.TreeGitModified = { fg = C.git.change }
    G.TreeGitDirty = { fg = C.gray4 }
    G.TreeGitAdded = { fg = C.git.add }
    G.TreeGitNew = { fg = C.gray4 }
    G.TreeGitDeleted = { fg = C.gray4 }
    G.TreeGitStaged = { fg = C.gray4 }
    G.TreeGitUntracked = { fg = C.orange.base }
    G.TreeTitleBar = { link = 'WinBar' }
    G.TreeFloatBorder = { link = 'FloatBorder' }
    G.TreeCursorLine = { bg = C.bg_selected }
    G.TreeCursor = { bg = C.none, fg = C.none }
    G.TreeFolderIcon = { fg = C.yellow.dim }
    G.TreeIndentMarker = { fg = C.gray4 }
    G.TreeSymlink = { fg = C.blue2 }
    G.TreeFolderName = { fg = C.blue1 }
    G.TreeWinSeparator = { link = 'WinSeparator' }

    G.Comment = { fg = C.comment, italic = O.italic_comments } -- any comment
    G.ColorColumn = { bg = C.bg_visual } -- used for the columns set with 'colorcolumn'
    G.Conceal = { fg = C.gray3 } -- placeholder characters substituted for concealed text (see 'conceallevel')
    G.Cursor = { fg = C.black0, bg = C.fg } -- character under the cursor
    G.lCursor = { fg = C.black0 } -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    G.CursorIM = { fg = C.black0 } -- like Cursor, but used when in IME mode |CursorIM|
    G.CursorColumn = { bg = C.bg_visual, bold = O.cursorline.bold } -- Screen-column at the cursor, when 'cursorcolumn' is set.
    G.CursorLine = { bg = C.bg_visual, bold = O.cursorline.bold } -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    G.CursorLineNr = { fg = C.gray5, bold = O.cursorline.bold_number } -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    G.CursorLineSign = {}
    G.Directory = { fg = C.blue1 } -- directory names (and other special names in listings)
    G.EndOfBuffer = { fg = C.fg_sidebar } -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { } -- cursor in a focused terminal
    -- TermCursorNC= { } -- cursor in an unfocused terminal
    G.ErrorMsg = { fg = C.error } -- error messages on the command line
    G.VertSplit = { fg = C.border_fg } -- the column separating vertically split windows
    G.WinSeparator = { fg = C.border_fg, bg = C.border_bg } -- the column separating vertically split windows
    G.Folded = { fg = C.fg_fold, bg = C.bg_fold } -- line used for closed folds
    G.FoldColumn = { bg = C.bg_fold, fg = C.fg_fold } -- 'foldcolumn'
    G.SignColumn = { bg = C.bg_sidebar, fg = C.fg_sidebar } -- column where |signs| are displayed
    G.SignColumnSB = { bg = C.bg_sidebar, fg = C.fg_sidebar } -- column where |signs| are displayed
    G.Substitute = { bg = C.red.base, fg = C.bg_dark } -- |:substitute| replacement text highlighting
    G.LineNr = { fg = C.fg_sidebar } -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    G.MatchParen = { underline = true, bold = true, sp = C.white1 } -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    G.ModeMsg = { fg = C.fg, bold = true } -- 'showmode' message (e.g., "-- INSERT -- ")
    G.MsgArea = { fg = C.fg } -- Area for messages and cmdline
    -- MsgSeparator= { } -- Separator for scrolled messages, `msgsep` flag of 'display'
    G.MoreMsg = { fg = C.blue1 } -- |more-prompt|
    G.NonText = { fg = C.gray4 } -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    G.Normal = { fg = C.fg, bg = C.bg } -- normal text
    G.NormalNC = { fg = C.fg, bg = C.bg } -- normal text in non-current windows
    G.NormalSB = { fg = C.fg_sidebar, bg = C.bg_sidebar } -- normal text in sidebar
    G.NormalFloat = { fg = C.fg_float, bg = C.bg_float } -- Normal text in floating windows.
    G.FloatBorder = { fg = C.fg_float_border, bg = C.bg_float_border }
    G.FloatTitle = { fg = C.yellow.base }
    G.Pmenu = { bg = C.bg_popup } -- Popup menu: normal item.
    G.PmenuSel = { bg = C.bg_selected } -- Popup menu: selected item.
    G.PmenuSbar = { bg = C.gray2 } -- Popup menu: scrollbar.
    G.PmenuThumb = { bg = C.gray2, fg = C.gray2 } -- Popup menu: Thumb of the scrollbar.
    G.Question = { fg = C.info } -- |hit-enter| prompt and yes/no questions
    G.QuickFixLine = { bg = C.bg_visual, bold = true } -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    G.Search = { bg = C.bg_visual, fg = C.yellow.bright, bold = true, underline = true } -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    G.IncSearch = { bg = C.yellow.base, fg = C.bg_visual, bold = true } -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    G.CurSearch = { link = 'IncSearch' }
    G.SpecialKey = { fg = C.gray5 } -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    G.SpellBad = { sp = C.error, undercurl = true } -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    G.SpellCap = { sp = C.warning, undercurl = true } -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    G.SpellLocal = { sp = C.info, undercurl = true } -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    G.SpellRare = { sp = C.hint, undercurl = true } -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    G.StatusLine = { fg = C.fg_sidebar, bg = C.bg_statusline } -- status line of current window
    G.StatusLineNC = { fg = C.gray4, bg = C.bg_statusline } -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    G.TabLine = { bg = C.bg_statusline, fg = C.fg } -- tab pages line, not active tab page label
    G.TabLineFill = { bg = C.black0, fg = C.none } -- tab pages line, where there are no labels
    G.TabLineSel = { fg = C.fg_bright, bg = C.bg } -- tab pages line, active tab page label
    G.Title = { fg = C.fg_bright, bold = true } -- titles for output from ":set all", ":autocmd" etc.
    G.Visual = { bg = C.bg_visual, bold = O.cursorline.bold } -- Visual mode selection
    G.VisualNOS = { bg = C.bg_visual } -- Visual mode selection when vim is "Not Owning the Selection".
    G.WarningMsg = { fg = C.warning } -- warning messages
    G.Whitespace = { fg = C.gray4 } -- "nbsp", "space", "tab" and "trail" in 'listchars'
    G.WildMenu = { bg = C.bg_visual } -- current match in 'wildmenu' completion
    G.WinBar = { bg = C.bg_dark, fg = C.gray5 }
    G.WinBarNC = { bg = C.bg_dark, fg = C.gray4 }

    -- DIFF

    G.DiffAdd = { bg = C.diff.add, bold = true } -- diff mode: Added line |diff.txt|
    G.DiffChange = { bg = C.diff.change0 } -- diff mode: Changed line |diff.txt|
    G.DiffDelete = { bg = C.diff.delete, bold = true } -- diff mode: Deleted line |diff.txt|
    G.DiffText = { bg = C.diff.change1, bold = true } -- diff mode: Changed text within a changed line |diff.txt|
    G.diffAdded = { fg = C.git.add }
    G.diffRemoved = { fg = C.git.delete }
    G.diffChanged = { fg = C.git.change }
    G.diffOldFile = { fg = C.fg }
    G.diffNewFile = { fg = C.green.base }
    G.diffFile = { fg = C.fg }
    G.diffLine = {}
    G.diffIndexLine = {}

    return G
end

return M
