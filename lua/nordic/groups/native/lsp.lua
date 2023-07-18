-- Notes are from @folke/tokyonight.nvim.

local C = require 'nordic.colors'

return {
    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText = { bg = C.fg_gutter }, -- used for highlighting "text" references

    LspReferenceRead = { bg = C.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = C.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = C.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = C.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = C.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = C.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { bg = C.gray1, fg = C.error, bold = true }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = C.gray1, fg = C.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextWarning = { bg = C.gray1, fg = C.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = C.gray1, fg = C.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = C.gray1, fg = C.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = C.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = C.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = C.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = C.hint }, -- Used to underline "Hint" diagnostics
    DiagnosticText = { bg = C.black1 },

    LspSignatureActiveParameter = { bg = C.gray3, bold = true },
    LspCodeLens = { fg = C.comment },

    LspInfoBorder = { link = 'FloatBorder' },

    ALEErrorSign = { fg = C.error },
    ALEWarningSign = { fg = C.warning },
}
