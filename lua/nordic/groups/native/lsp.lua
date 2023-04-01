-- Notes are from @folke/tokyonight.nvim.

local c = require 'nordic.colors'

return {

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references

    LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error, bold = true }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning, bold = true }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info, bold = false }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint, bold = false }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { bg = c.gray1, fg = c.error, bold = true }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = c.gray1, fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextWarning = { bg = c.gray1, fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = c.gray1, fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = c.gray1, fg = c.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { underline = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { underline = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { underline = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { underline = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    LspSignatureActiveParameter = { bg = c.gray3, bold = true },
    LspCodeLens = { fg = c.comment },

    LspInfoBorder = { fg = c.border, bg = c.bg_float },

    ALEErrorSign = { fg = c.error },
    ALEWarningSign = { fg = c.warning },

    -- Groups from LSP semantic tokens.
    LspClass = { link = '@class' },
    LspComment = { link = '@comment' },
    LspEnum = { link = '@type' },
    LspEnumMember = { link = '@type.builtin' },
    LspEvent = { link = '@label' },
    LspFunction = { link = '@function' },
    LspInterface = { link = '@type' },
    LspKeyword = { link = '@keyword' },
    LspMacro = { link = '@macro' },
    LspMethod = { link = '@method' },
    LspModifier = { link = '@operator' },
    LspNamespace = { link = '@namespace' },
    LspNumber = { link = '@number' },
    LspOperator = { link = '@operator' },
    LspParameter = { link = '@parameter' },
    LspProperty = { link = '@property' },
    LspRegexp = { link = '@string.regex' },
    LspString = { link = '@text' },
    LspStruct = { link = '@type' },
    LspType = { link = '@type' },
    LspTypeParameter = { link = '@type' },
    LspVariable = { link = '@variable' },

    -- LSP Semantic Token Groups
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.interface"] = { link = "Identifier" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    -- ["@lsp.typemod.variable.globalScope"] (global variables)

}
