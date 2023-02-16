-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'
local o = require('nordic.config').options

return {

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = c.magenta.bright }, -- (preferred) any constant
    String = { fg = c.green.base }, --   a string constant: "this is a string"
    Character = { fg = c.green.base }, --  a character constant: 'c', '\n'
    Number = { fg = c.magenta.bright }, --   a number constant: 234, 0xff
    Boolean = { fg = c.magenta.bright }, --  a boolean constant: TRUE, false
    Float = { fg = c.magenta.bright }, --    a floating point constant: 2.3e10
    None = { fg = c.none, bg = c.none },

    Title = { fg = c.yellow.base },

    Builtin = { fg = c.blue0 },

    Identifier = { fg = c.fg }, -- (preferred) any variable name
    Function = { fg = c.blue2 }, -- function name (also: methods for classes)

    Keyword = { fg = c.orange.bright, bold = o.bold_keywords }, --  any other keyword
    Statement = { link = 'Keyword' }, -- (preferred) any statement
    Conditional = { link = 'Keyword' }, --  if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' }, --   for, do, while, etc.
    Label = { link = 'Keyword' }, --    case, default, etc.
    Exception = { link = 'Keyword' }, --  try, catch, throw
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.
    Operator = { fg = c.fg }, -- "sizeof", "+", "*", etc.

    Comment = { fg = c.comment, italic = o.italic_comments },

    Macro = { fg = c.red.base, bold = false }, --    same as Define
    PreProc = { link = 'Macro' }, -- (preferred) generic Preprocessor
    Include = { link = 'Macro' }, --  preprocessor #include
    Define = { link = 'Macro' }, --   preprocessor #define
    PreCondit = { link = 'Macro' }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.yellow.base, bold = false }, -- (preferred) int, long, char, etc.
    Structure = { link = 'Type' }, --  struct, union, enum, etc.
    Typedef = { link = 'Type' }, --  A typedef

    -- What are these? TODO.
    Special = { fg = c.blue1 }, -- (preferred) any special symbol
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

    Error = { fg = c.error }, -- (preferred) any erroneous construct
    Todo = { bg = c.yellow.dim, fg = c.bg_dark }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Note = { fg = c.bg, bg = c.info },

    -- What are these? TODO.
    qfLineNr = { fg = c.gray4 },
    qfFileName = { fg = c.blue1 },

    -- What are these? TODO.
    htmlH1 = { fg = c.magenta.base, bold = true },
    htmlH2 = { fg = c.blue1, bold = true },

    -- mkdHeading = { fg = c.orange.base, bold = true },
    -- mkdCode = { bg = c.terminal_black, fg = c.fg },
    mkdCodeDelimiter = { bg = c.black, fg = c.fg },
    mkdCodeStart = { fg = c.cyan.base, bold = true },
    mkdCodeEnd = { fg = c.cyan.base, bold = true },
    -- mkdLink = { fg = c.blue, underline = true },

    markdownHeadingDelimiter = { fg = c.orange.base, bold = true },
    markdownCode = { fg = c.cyan.base },
    markdownCodeBlock = { fg = c.cyan.base },
    markdownH1 = { fg = c.magenta.base, bold = true },
    markdownH2 = { fg = c.blue1, bold = true },
    markdownLinkText = { fg = c.blue1, underline = true },

    ['@punctuation.special.markdown'] = { fg = c.orange.base, bold = true },
    ['@text.todo.unchecked'] = { fg = c.blue1 }, -- For brackets and parens.
    ['@text.todo.checked'] = { fg = c.green.base }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = c.black, fg = c.blue1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = c.black, fg = c.blue1 },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = c.black, fg = c.info }, -- used for breakpoint colors in terminal-debug
}
