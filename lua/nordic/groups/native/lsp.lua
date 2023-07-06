-- Notes are from @folke/tokyonight.nvim.

local C = require 'nordic.colors'

return {

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText = { bg = C.fg_gutter }, -- used for highlighting "text" references

    LspReferenceRead = { bg = C.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = C.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = C.error, bold = false }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = C.warning, bold = false }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = C.info, bold = false }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = C.hint, bold = false }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

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

    LspInfoBorder = { fg = C.border, bg = C.bg_float },

    ALEErrorSign = { fg = C.error },
    ALEWarningSign = { fg = C.warning },

    -- LSP Semantic Token Groups
    -- types follow the pattern @lsp.type.<type>.<filetype>
    -- ["@lsp.type.class"] = { link = '@class' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.enum'] = { link = '@type' },
    -- ["@lsp.type.enumMember"] = { link = '@type.builtin' },
    -- ["@lsp.type.event"] = { link = '@label' },
    -- ["@lsp.type.function"] = { link = '@function' },
    ['@lsp.type.interface'] = { link = 'Identifier' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    -- ["@lsp.type.macro"] = { link = '@macro' },
    -- ["@lsp.type.method"] = { link = '@method' },
    -- ["@lsp.type.modifier"] = { link = '@operator' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    -- ["@lsp.type.number"] = { link = '@number' },
    -- ["@lsp.type.operator"] = { link = '@operator' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    -- ["@lsp.type.regexp"] = { link = '@string.regex' },
    -- ["@lsp.type.string"] = { link = '@text' },
    -- ["@lsp.type.struct"] = { link = '@type' },
    -- ["@lsp.type.type"] = { link = '@type' },
    -- ["@lsp.type.typeParameter"] = { link = '@type' },
    -- ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables

    -- modifiers follow the pattern @lsp.mod.<modifier>.<filetype>
    -- ["@lsp.mod.abstract"] = {},
    -- ["@lsp.mod.async"] = {},
    -- ["@lsp.mod.declaration"] = {},
    -- ["@lsp.mod.defaultLibrary"] = {},
    -- ["@lsp.mod.definition"] = {},
    -- ["@lsp.mod.deprecated"] = {},
    -- ["@lsp.mod.documentation"] = {},
    -- ["@lsp.mod.modification"] = {},
    -- ["@lsp.mod.readonly"] = {},
    -- ["@lsp.mod.static"] = {},

    -- type modifiers follow the pattern @lsp.typemod.<type>.<modifier>.<filetype>
    ['@lsp.typemod.function.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.method.defaultLibrary'] = { link = '@function.builtin' },
    ['@lsp.typemod.operator.injected'] = { link = '@operator' },
    ['@lsp.typemod.string.injected'] = { link = '@string' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = '@variable.builtin' },
    ['@lsp.typemod.variable.injected'] = { link = '@variable' },
    -- ["@lsp.typemod.variable.globalScope"] (global variables)

}
