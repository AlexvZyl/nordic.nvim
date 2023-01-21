-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'

return {

    Constant    = { fg = c.magenta.bright }, -- (preferred) any constant
    String      = { fg = c.green.base }, --   a string constant: "this is a string"
    Character   = { fg = c.green.bright }, --  a character constant: 'c', '\n'
    Number      = { fg = c.magenta.bright  }, --   a number constant: 234, 0xff
    Boolean     = { fg = c.magenta.bright  }, --  a boolean constant: TRUE, false
    Float       = { fg = c.magenta.bright  }, --    a floating point constant: 2.3e10

    Identifier    = { fg = c.fg }, -- (preferred) any variable name
    Function      = { fg = c.orange.base }, -- function name (also: methods for classes)

    Statement     = { fg = c.orange.base }, -- (preferred) any statement
    Conditional   = { fg = c.orange.base  }, --  if, then, else, endif, switch, etc.
    Repeat        = { fg = c.orange.base  }, --   for, do, while, etc.
    Label         = { fg = c.orange.base  }, --    case, default, etc.
    Operator      = { fg = c.orange.bright }, -- "sizeof", "+", "*", etc.
    Keyword       = { fg = c.orange.base }, --  any other keyword
    Exception     = { fg = c.orange.bright  }, --  try, catch, throw

    PreProc       = { fg = c.red.base, bold = true }, -- (preferred) generic Preprocessor
    Include       = { fg = c.red.base, bold = true }, --  preprocessor #include
    Define        = { fg = c.red.base, bold = true }, --   preprocessor #define
    Macro         = { fg = c.red.base, bold = true }, --    same as Define
    PreCondit     = { fg = c.red.base, bold = true }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.yellow.base }, -- (preferred) int, long, char, etc.
    StorageClass  = { fg = c.orange.base }, -- static, register, volatile, etc.
    Structure     = { fg = c.orange.base }, --  struct, union, enum, etc.
    Typedef       = { fg = c.yellow.base }, --  A typedef

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
    Todo = { bg = c.yellow.dim, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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

    ["@punctuation.special.markdown"] = { fg = c.orange.base, bold = true },
    ["@text.todo.unchecked"] = { fg = c.blue1 }, -- For brackets and parens.
    ["@text.todo.checked"] = { fg = c.green.base }, -- For brackets and parens.
    ["@text.literal.markdown_inline"] = { bg = c.black, fg = c.blue1 },
    ["@text.literal.markdown"] = { link = "Normal" },
    ["helpCommand"] = { bg = c.black, fg = c.blue1 },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = c.black, fg = c.info }, -- used for breakpoint colors in terminal-debug

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { bg = c.gray3, fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = c.gray3, fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = c.gray3, fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = c.gray3, fg = c.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    LspSignatureActiveParameter = { bg = c.gray3, bold = true },
    LspCodeLens = { fg = c.comment },

    LspInfoBorder = { fg = c.border, bg = c.bg_float },

    ALEErrorSign = { fg = c.error },
    ALEWarningSign = { fg = c.warning },
}
