-- Notes and format from @folke/tokyonight.nvim.

local C = require 'nordic.colors'
local O = require('nordic.config').options

return {

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = C.magenta.bright }, -- (preferred) any constant
    Number = { link = 'Constant' }, --   a number constant: 234, 0xff
    Boolean = { link = 'Number' }, --  a boolean constant: TRUE, false
    Float = { link = 'Number' }, --    a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.green.base }, --   a string constant: "this is a string"
    Character = { fg = C.green.base }, --  a character constant: 'c', '\n'

    Title = { fg = C.yellow.base },

    Builtin = { fg = C.blue0, italic = true },

    Identifier = { fg = C.fg }, -- (preferred) any variable name
    Function = { fg = C.blue2 }, -- function name (also: methods for classes)

    Keyword = { fg = C.orange.base, bold = O.bold_keywords }, --  any other keyword
    Statement = { link = 'Keyword' }, -- (preferred) any statement
    Conditional = { link = 'Keyword' }, --  if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' }, --   for, do, while, etc.
    Label = { link = 'Keyword' }, --    case, default, etc.
    Exception = { link = 'Keyword' }, --  try, catch, throw
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.

    Operator = { fg = C.fg }, -- "sizeof", "+", "*", etc.

    Macro = { fg = C.red.base }, --    same as Define
    PreProc = { link = 'Macro' }, -- (preferred) generic Preprocessor
    Include = { link = 'Macro' }, --  preprocessor #include
    Define = { link = 'Macro' }, --   preprocessor #define
    PreCondit = { link = 'Macro' }, --  preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.comment, italic = O.italic_comments },

    Type = { fg = C.yellow.base, bold = false }, -- (preferred) int, long, char, etc.
    Structure = { link = 'Type' }, --  struct, union, enum, etc.
    Typedef = { link = 'Type' }, --  A typedef

    -- What are these? TODO.
    Special = { fg = C.blue1 }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    Italic = { italic = true },

    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.error }, -- (preferred) any erroneous construct
    Todo = { bg = C.yellow.dim, fg = C.black }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Note = { fg = C.black, bg = C.info },

    -- What are these? TODO.
    qfLineNr = { fg = C.gray4 },
    qfFileName = { fg = C.blue1 },

    -- What are these? TODO.
    htmlH1 = { fg = C.magenta.base, bold = true },
    htmlH2 = { fg = C.blue1, bold = true },

    -- mkdHeading = { fg = c.orange.base, bold = true },
    -- mkdCode = { bg = c.terminal_black, fg = c.fg },
    mkdCodeDelimiter = { bg = C.black, fg = C.fg },
    mkdCodeStart = { fg = C.cyan.base, bold = true },
    mkdCodeEnd = { fg = C.cyan.base, bold = true },
    -- mkdLink = { fg = c.blue, underline = true },

    markdownHeadingDelimiter = { fg = C.orange.base, bold = true },
    markdownCode = { fg = C.cyan.base },
    markdownCodeBlock = { fg = C.cyan.base },
    markdownH1 = { fg = C.magenta.base, bold = true },
    markdownH2 = { fg = C.blue1, bold = true },
    markdownLinkText = { fg = C.blue1, underline = true },

    ['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true },
    ['@text.todo.unchecked'] = { fg = C.blue1 }, -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.base }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.black, fg = C.blue1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black, fg = C.blue1 },

    debugPC = { bg = C.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = C.black, fg = C.info }, -- used for breakpoint colors in terminal-debug
}
