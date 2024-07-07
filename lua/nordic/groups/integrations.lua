local M = {}

function M.get_groups()
    local C = require('nordic.colors')
    local O = require('nordic.config').options

    local G = {}

    -- Dashboard.lua
    G.DashboardHeader = { fg = C.yellow.base, bold = true }
    G.DashboardFooter = { fg = C.cyan.base }
    G.DashboardCenter = { fg = C.green.base }
    G.DashboardShortCut = { fg = C.gray4, bold = true }
    G.DashboardProjectTitle = { fg = C.orange.base, bold = true }
    G.DashboardProjectTitleIcon = { link = 'DashboardProjectTitle' }
    G.DashboardProjectIcon = { fg = C.magenta.bright }
    G.DashboardMruTitle = { link = 'DashboardProjectTitle' }
    G.DashboardMruIcon = {}
    G.DashboardFiles = { fg = C.fg }
    G.DashboardDesc = { fg = C.green.base }
    G.DashboardKey = { fg = C.red.base, bold = true }
    G.DashboardIcon = { fg = C.green.base }

    -- Diffview.
    G.DiffviewNormal = { bg = C.bg_dark, fg = C.fg }
    G.DiffviewStatusLine = { bg = C.black0 }
    G.DiffviewFilePanelTitle = { fg = C.orange.base, bold = true }
    G.DiffviewFolderSign = { fg = C.yellow.dim }
    G.DiffviewFolderName = { bg = C.bg_dark, fg = C.blue1 }

    -- Gitsigns.
    G.GitSignsAdd = { fg = C.git.add, bg = C.bg_sidebar }
    G.GitSignsChange = { fg = C.git.change, bg = C.bg_sidebar }
    G.GitSignsDelete = { fg = C.git.delete, bg = C.bg_sidebar }
    G.GitSignsAddPreview = { link = 'GitSignsAdd' }
    G.GitSignsDeletePreview = { link = 'GitSignsDelete' }

    -- Indent blankline.
    G.IndentBlanklineChar = { fg = C.gray1 }
    G.IndentBlanklineContextChar = { fg = C.gray2 }
    G.IndentBlanklineContextStart = { sp = C.white0, underline = true }

    -- Lazy.
    G.LazyH1 = { fg = C.yellow.base, bold = true }
    G.LazyButtonActive = { link = 'LazyH1' }
    G.LazyButton = { fg = C.white0 }
    G.LazySpecial = { fg = C.yellow.base }
    G.LazyProgressDone = { fg = C.green.bright }
    G.LazyProgressTodo = { fg = C.gray4 }
    G.LazyCommitType = { fg = C.yellow.base }

    -- Leap.
    G.LeapLabelPrimary = { bg = C.yellow.dim, fg = C.black0, bold = true }
    if O.leap.dim_backdrop then G.LeapBackdrop = { fg = C.gray4 } end

    -- LSP Signature.
    G.LspSignatureActiveParameter = { bg = C.bg_float, underline = true, bold = true }

    -- LSP Saga.
    G.SagaBorder = { bg = C.black2, fg = C.fg_float_border }
    G.SagaNormal = { bg = C.black2 }
    G.HoverBorder = { link = 'FloatBorder' }
    G.HoverNormal = { link = 'NormalFloat' }
    G.RenameNormal = { bg = C.bg_float, fg = C.yellow.bright }
    G.RenameBorder = { link = 'FloatBorder' }
    G.DiagnosticPos = { fg = C.fg }
    G.DiagnosticWord = { fg = C.fg }
    G.DiagnosticSource = { fg = C.gray4 }
    G.DiagnosticNormal = { link = 'NormalFloat' }
    G.DiagnosticShowNormal = { link = 'NormalFloat' }
    G.DiagnosticShowBorder = { link = 'FloatBorder' }
    G.DiagnosticBorder = { link = 'FloatBorder' }
    G.SagaBorder = { bg = C.black2, fg = C.fg_float_border }
    G.SagaNormal = { bg = C.black2 }
    G.HoverBorder = { link = 'FloatBorder' }
    G.HoverNormal = { link = 'NormalFloat' }
    G.RenameNormal = { bg = C.bg_float, fg = C.yellow.bright }
    G.RenameBorder = { link = 'FloatBorder' }
    G.DiagnosticPos = { fg = C.fg }
    G.DiagnosticWord = { fg = C.fg }
    G.DiagnosticSource = { fg = C.gray4 }
    G.DiagnosticNormal = { link = 'NormalFloat' }
    G.DiagnosticShowNormal = { link = 'NormalFloat' }
    G.DiagnosticShowBorder = { link = 'FloatBorder' }
    G.DiagnosticBorder = { link = 'FloatBorder' }

    -- Mini Statusline.
    local LC = require('lualine.themes.nordic')
    G.MiniStatuslineModeNormal = { bg = LC.normal.a.bg, fg = LC.normal.a.fg, bold = LC.normal.a.gui == 'bold' }
    G.MiniStatuslineModeInsert = { bg = LC.insert.a.bg, fg = LC.insert.a.fg, bold = LC.insert.a.gui == 'bold' }
    G.MiniStatuslineModeVisual = { bg = LC.visual.a.bg, fg = LC.visual.a.fg, bold = LC.visual.a.gui == 'bold' }
    G.MiniStatuslineModeReplace = { bg = LC.replace.a.bg, fg = LC.replace.a.fg, bold = LC.replace.a.gui == 'bold' }
    G.MiniStatuslineModeCommand = { bg = LC.command.a.bg, fg = LC.command.a.fg, bold = LC.command.a.gui == 'bold' }
    G.MiniStatuslineModeOther = { bg = LC.terminal.a.bg, fg = LC.terminal.a.fg, bold = LC.terminal.a.gui == 'bold' }
    G.MiniStatuslineDevinfo = { bg = LC.normal.b.bg, fg = LC.normal.b.fg }
    G.MiniStatuslineFilename = { bg = LC.normal.c.bg, fg = LC.normal.c.fg }
    G.MiniStatuslineFileinfo = { bg = LC.normal.b.bg, fg = LC.normal.b.fg }
    G.MiniStatuslineInactive = { bg = LC.inactive.a.bg, fg = LC.inactive.a.fg, bold = LC.inactive.a.gui == 'bold' }

    -- Nvim tree.
    G.NvimTreeNormal = { fg = C.fg, bg = C.bg }
    G.NvimTreeNormalNC = { fg = C.fg, bg = C.bg }
    G.NvimTreeFolderName = { fg = C.blue1 }
    G.NvimTreeOpenedFolderName = { link = 'NvimTreeFolderName' }
    G.NvimTreeEmptyFolderName = { link = 'NvimTreeFolderName' }
    G.NvimTreeFolderIcon = { fg = C.yellow.dim }
    G.NvimTreeSpecialFile = { fg = C.magenta.bright }
    G.NvimTreeRootFolder = { fg = C.gray4 }
    G.NvimTreeGitDirty = { fg = C.gray4 }
    G.NvimTreeGitNew = { fg = C.gray4 }
    G.NvimTreeGitDeleted = { fg = C.gray4 }
    G.NvimTreeGitStaged = { fg = C.gray4 }
    G.NvimTreeIndentMarker = { fg = C.gray4 }
    G.NvimTreeWinSeparator = { fg = C.bg_dark, bg = C.bg }
    G.NvimTreeCursorLine = { bg = C.gray1 }
    G.NvimTreeCursor = { bg = C.none, fg = C.none }
    G.NvimTreeSymlink = { fg = C.blue2 }

    -- Neo tree.
    G.NeoTreeCursorLine = { link = 'NvimTreeCursorLine' }
    G.NeoTreeDirectoryIcon = { link = 'NvimTreeFolderIcon' }
    G.NeoTreeRootName = { link = 'NvimTreeRootFolder' }
    G.NeoTreeFileName = { link = 'NvimTreeNormal' }
    G.NeoTreeFileIcon = { fg = C.blue2 }
    G.NeoTreeFileNameOpened = { fg = C.fg }
    G.NeoTreeIndentMarker = { link = 'NvimTreeIndentMarker' }
    G.NeoTreeGitAdded = { fg = C.git.add }
    G.NeoTreeGitConflict = { fg = C.magenta.bright }
    G.NeoTreeGitModified = { fg = C.git.change }
    G.NeoTreeGitUntracked = { fg = C.fg_sidebar }
    G.NeoTreeNormal = { link = 'NvimTreeNormal' }
    G.NeoTreeNormalNC = { link = 'NvimTreeNormalNC' }
    G.NeoTreeSymbolicLinkTarget = { link = 'NvimTreeSymlink' }

    -- Noice Flat.
    G.NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true }
    G.NoiceLspProgressClient = { fg = C.gray4, bg = C.bg }
    G.NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg }
    G.NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black0 }
    G.NoiceFormatProgressTodo = { bg = C.gray5, fg = C.black0 }
    G.NoiceCmdline = { bg = C.bg_dark, fg = C.fg }
    G.NoiceCmdlineIcon = { bg = C.bg_float, fg = C.yellow.base }
    G.NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base }
    G.NoicePopupBorder = { fg = C.black0, bg = C.bg_float }
    G.NoiceCmdlinePopupBorder = { link = 'NoicePopupBorder' }
    G.NoiceCmdlinePopupBorderSearch = { link = 'NoicePopupBorder' }
    G.NoiceCmdlinePopup = { bg = C.bg_float }

    -- Noice Classic.
    if O.noice.style == 'classic' then
        G.NoiceCmdline = { bg = C.bg, fg = C.cyan.base }
        G.NoiceCmdlinePopup = { bg = C.bg }
        G.NoicePopupBorder = { bg = C.bg, fg = C.cyan.base }
        G.NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.bright }
    end

    -- Nvim cmp.
    G.CmpItemAbbrDeprecated = { fg = C.grey4 }
    G.CmpItemAbbrMatch = { fg = C.blue1, bold = true }
    G.CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' }
    G.CmpItemKindField = { link = '@field' }
    G.CmpItemKindProperty = { link = '@property' }
    G.CmpItemKindEvent = { link = 'Type' }
    G.CmpItemKindText = { fg = C.grey4 }
    G.CmpItemKindEnum = { link = 'Type' }
    G.CmpItemKindKeyword = { link = 'Keyword' }
    G.CmpItemKindConstant = { link = 'Constant' }
    G.CmpItemKindConstructor = { link = 'Function' }
    G.CmpItemKindReference = { fg = C.cyan.base }
    G.CmpItemKindFunction = { link = 'Function' }
    G.CmpItemKindStruct = { link = 'Type' }
    G.CmpItemKindClass = { link = 'Type' }
    G.CmpItemKindModule = { fg = C.yellow.dim }
    G.CmpItemKindOperator = { link = 'Operator' }
    G.CmpItemKindVariable = { fg = C.cyan.base }
    G.CmpItemKindFile = { fg = C.blue1 }
    G.CmpItemKindUnit = { link = 'Constant' }
    G.CmpItemKindSnippet = { fg = C.blue1 }
    G.CmpItemKindFolder = { fg = C.yellow.dark }
    G.CmpItemKindMethod = { link = 'Function' }
    G.CmpItemKindValue = { link = 'Constant' }
    G.CmpItemKindEnumMember = { link = 'Type' }
    G.CmpItemKindInterface = { link = 'Type' }
    G.CmpItemKindColor = { link = 'Constant' }
    G.CmpItemKindTypeParameter = { link = 'Type' }
    G.CmpItemKindTabNine = { fg = C.red.base }
    G.CmpItemKindCopilot = { fg = C.red.base }

    -- Nvim DAP.
    G.DapBreakPoint = { fg = C.red.bright }

    -- Nvim DAP UI.
    G.DapUINormal = { bg = C.bg_float }
    G.DapUIStop = { fg = C.red.bright, bold = true }
    G.DapUIRestart = { fg = C.green.bright, bold = true }
    G.DapUIPlayPause = { fg = C.green.bright, bold = true }
    G.DapUIStepInto = { fg = C.blue2, bold = true }
    G.DapUIStepOver = { fg = C.blue2, bold = true }
    G.DapUIStepOut = { fg = C.blue2, bold = true }
    G.DapUIStepBack = { fg = C.blue3, bold = true }
    G.DapUIValue = { fg = C.magenta.bright }
    G.DapUIWatchesValue = { fg = C.green.bright }
    G.DapUIType = { fg = C.yellow.base }
    G.DapUIFloatBorder = { fg = C.border_nb, bg = C.bg }
    G.DapUIFloatNormal = { bg = C.bg }
    G.DapUILineNumber = { fg = C.green.bright }

    -- Notify.
    G.NotifyBackground = { bg = C.bg_float }
    G.NotifyERRORBorder = { fg = C.error }
    G.NotifyERRORIcon = { fg = C.error }
    G.NotifyERRORTitle = { fg = C.error, bold = true }
    G.NotifyERRORBody = { fg = C.fg }
    G.NotifyWARNBorder = { fg = C.warn }
    G.NotifyWARNIcon = { fg = C.warn }
    G.NotifyWARNTitle = { fg = C.warn, bold = true }
    G.NotifyWARNBody = { fg = C.fg }
    G.NotifyINFOBorder = { fg = C.info }
    G.NotifyINFOIcon = { fg = C.info }
    G.NotifyINFOTitle = { fg = C.info, bold = true }
    G.NotifyINFOBody = { fg = C.fg }
    G.NotifyDEBUGBorder = { fg = C.orange.bright }
    G.NotifyDEBUGIcon = { fg = C.orange.bright }
    G.NotifyDEBUGTitle = { fg = C.orange.bright, bold = true }
    G.NotifyDEBUGBody = { fg = C.fg }
    G.NotifyTRACEBorder = { fg = C.gray5 }
    G.NotifyTRACEIcon = { fg = C.gray5 }
    G.NotifyTRACETitle = { fg = C.gray5, bold = true }
    G.NotifyTRACEBody = { fg = C.fg }

    -- Telescope Classic.
    G.TelescopeNormal = { bg = C.bg }
    G.TelescopePromptNormal = { bg = C.bg }
    G.TelescopeResultsNormal = { bg = C.bg }
    G.TelescopePreviewNormal = { bg = C.bg }
    G.TelescopePreviewLine = { bg = C.gray2 }
    G.TelescopeSelection = { bg = C.bg, fg = C.yellow.bright, bold = false }
    G.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg, bold = true }
    G.TelescopePreviewTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopeResultsTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopePromptTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopeTitle = { fg = C.white0, bg = C.bg, bold = true }
    G.TelescopeBorder = { fg = C.white0, bg = C.bg }
    G.TelescopePromptBorder = { fg = C.white0, bg = C.bg }
    G.TelescopeResultsBorder = { fg = C.white0, bg = C.bg }
    G.TelescopePreviewBorder = { fg = C.white0, bg = C.bg }
    G.TelescopeMatching = { bold = true }
    G.TelescopePromptPrefix = { bg = C.bg, fg = C.orange.bright }
    G.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg, bold = true }
    G.TelescopeMultiSelection = { bg = C.bg }

    -- Telescope Flat.
    if O.telescope.style == 'flat' then
        G.TelescopeNormal = { bg = C.bg_float }
        G.TelescopePromptNormal = { bg = C.black2 }
        G.TelescopeResultsNormal = { bg = C.bg_float }
        G.TelescopePreviewNormal = { bg = C.bg_float }
        G.TelescopeSelection = { bg = C.bg_float, fg = C.yellow.bright }
        G.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg_float, bold = true }
        G.TelescopePreviewTitle = { bg = C.blue2, fg = C.black0, bold = true }
        G.TelescopeResultsTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.TelescopePromptTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.TelescopeTitle = { bg = C.orange.base, fg = C.black0, bold = true }
        G.TelescopeBorder = { fg = C.black0, bg = C.black0 }
        G.TelescopePromptBorder = { bg = C.black2, fg = C.black0 }
        G.TelescopeResultsBorder = { bg = C.bg_float, fg = C.black0 }
        G.TelescopePreviewBorder = { bg = C.bg_float, fg = C.black0 }
        G.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg_float, bold = true }
        G.TelescopeMultiSelection = { bg = C.bg_float }
        G.TelescopePromptPrefix = { bg = C.black2, fg = C.orange.bright }
        G.TelescopePreviewLine = { bg = C.gray1 }
    end

    -- Treesitter.
    -- LSP Semantic Token Groups
    -- Types follow the pattern @lsp.type.<type>.<filetype>
    -- These groups are for the Neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    --- Misc
    G['@comment'] = { link = 'Comment' }
    --G['@comment.documentation'] = { link = 'Comment' }
    G['@comment.documentation'] = { link = 'Comment' }
    G['@comment.note'] = { fg = C.hint }
    G['@comment.error'] = { fg = C.error }
    G['@comment.hint'] = { fg = C.hint }
    G['@comment.info'] = { fg = C.info }
    G['@comment.warning'] = { fg = C.warning }
    G['@comment.todo'] = { fg = C.todo }
    G['@operator'] = { fg = C.fg } -- For any operator: `+`, but also `->` and `*` in C.
    --- Punctuation
    G['@punctuation.delimiter'] = { link = 'Delimiter' } -- For delimiters ie: `.`
    G['@punctuation.bracket'] = { link = '@operator' } -- For brackets and parens.
    G['@punctuation.special'] = { link = 'Macro' } -- For special punctuation that does not fall in the categories before.
    G['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true }
    --- Literals
    G['@string'] = { link = 'String' }
    G['@string.documentation'] = { link = 'String' }
    G['@string.escape'] = { fg = C.magenta.bright } -- For escape characters within a string.
    G['@string.regex'] = { fg = C.magenta.bright } -- For regexes.
    --- Functions
    G['@constructor'] = { link = 'Function' } -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    G['@parameter'] = { fg = C.fg, italic = true } -- For parameters of a function.
    G['@parameter.builtin'] = { link = 'Builtin' } -- For builtin parameters of a function, e.g. "..." or Smali's pG[1-99]
    --- Keywords
    G['@keyword'] = { link = 'Keyword' } -- For keywords that don't fall in previous categories.
    G['@keyword.conditional'] = { link = 'Conditional' }
    G['@keyword.coroutine'] = { link = 'Macro' } -- For keywords related to coroutines.
    G['@keyword.debug'] = { link = 'Debug' }
    G['@keyword.directive'] = { link = 'PreProc' }
    G['@keyword.directive.define'] = { link = 'Define' }
    G['@keyword.exception'] = { link = 'Exception' }
    G['@keyword.export'] = { link = 'Keyword' }
    G['@keyword.function'] = { link = 'Keyword' } -- For keywords used to define a function.
    G['@keyword.import'] = { link = 'Include' }
    G['@keyword.operator'] = { link = 'Keyword' }
    G['@keyword.repeat'] = { link = 'Repeat' }
    G['@keyword.return'] = { link = 'Keyword' }
    G['@keyword.storage'] = { link = 'StorageClass' }
    G['@label'] = { link = 'Keyword' } -- For labels: `label:` in C and `:label:` in Lua.
    --- Types
    G['@type.builtin'] = { link = 'Type' }
    G['@field'] = { link = 'Field' } -- For fields.
    G['@property'] = { link = 'Field' }
    --- Identifiers
    G['@variable'] = { link = 'Variable' } -- Any variable name that does not have another highlight.
    G['@variable.builtin'] = { link = 'Builtin' } -- Variable names that are defined by the languages, like `this` or `self`.
    G['@variable.member'] = { link = 'Field' }
    --- Text
    -- G['@spell'] = { link = 'Comment' } -- This seems to interfere with regular text
    -- G["@text.literal.markdown"] = { }
    G['@text'] = { link = 'Normal' } -- For strings considered text in a markup language.
    G['@text.strong'] = { bold = true }
    G['@text.emphasis'] = { italic = true } -- For text to be represented with emphasis.
    G['@text.underline'] = { underline = true } -- For text to be represented with an underline.
    G['@text.strike'] = { strikethrough = true } -- For strikethrough text.
    G['@text.title'] = { link = 'Title' } -- Text that is part of a title.
    G['@text.uri'] = { underline = true } -- Any URI like a link or email.
    G['@text.literal'] = { link = 'String' }
    G['@text.literal.markdown_inline'] = { bg = C.black2, fg = C.fg }
    G['@text.reference'] = { link = 'Link' }
    G['@text.todo.unchecked'] = { fg = C.blue1 } -- For brackets and parens.
    G['@text.todo.checked'] = { fg = C.green.bright } -- For brackets and parens.
    G['@text.warning'] = { fg = C.warning }
    G['@text.danger'] = { fg = C.error }
    G['@text.diff.add'] = { link = 'DiffAdd' }
    G['@text.diff.delete'] = { link = 'DiffDelete' }
    G['@text.todo'] = { link = 'Todo' }
    G['@text.note'] = { link = 'Note' }
    --- Markup
    G['@markup'] = { link = '@none' }
    G['@markup.emphasis'] = { italic = true }
    G['@markup.environment'] = { link = 'Macro' }
    G['@markup.environment.name'] = { link = 'Type' }
    G['@markup.heading'] = { link = 'Title' }
    G['@markup.heading.1'] = { fg = C.yellow.base, bold = true }
    G['@markup.heading.2'] = { fg = C.orange.base, bold = true }
    G['@markup.heading.3'] = { fg = C.magenta.base, bold = true }
    G['@markup.heading.4'] = { fg = C.green.base }
    G['@markup.heading.5'] = { fg = C.blue2, italic = true }
    G['@markup.heading.6'] = { fg = C.cyan.base, italic = true }
    G['@markup.italic'] = { italic = true }
    G['@markup.list'] = { link = '@operator' }
    G['@markup.list.checked'] = { link = 'Field' }
    G['@markup.list.markdown'] = { fg = C.yellow.base, bold = true }
    G['@markup.list.unchecked'] = { fg = C.fg }
    G['@markup.link'] = { fg = C.cyan.base }
    G['@markup.link.label'] = { link = 'SpecialChar' }
    G['@markup.link.label.symbol'] = { link = 'Identifier' }
    G['@markup.link.url'] = { link = 'Underlined' }
    G['@markup.math'] = { link = 'Special' }
    G['@markup.raw'] = { link = 'String' }
    G['@markup.raw.markdown_inline'] = { bg = C.black2, fg = C.fg }
    G['@markup.strong'] = { bold = true }
    G['@markup.strikethrough'] = { strikethrough = true }
    G['@markup.underline'] = { underline = true }
    -- TSX
    G['@tag.tsx'] = { fg = C.blue1 }
    G['@constructor.tsx'] = { fg = C.blue1 }
    G['@tag.delimiter.tsx'] = { fg = C.blue1 }
    --LSP Semantic Token Groups
    G['@lsp.type.boolean'] = { link = 'Boolean' }
    G['@lsp.type.builtinType'] = { link = 'Type' }
    G['@lsp.type.comment'] = { link = 'Comment' }
    G['@lsp.type.enum'] = { link = 'Type' }
    G['@lsp.type.enumMember'] = { link = 'Field' }
    G['@lsp.type.escapeSequence'] = { link = '@string.escape' }
    G['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' }
    G['@lsp.type.interface'] = { link = 'Keyword' }
    G['@lsp.type.keyword'] = { link = 'Keyword' }
    G['@lsp.type.namespace'] = { link = 'Namespace' }
    G['@lsp.type.number'] = { link = 'Number' }
    G['@lsp.type.operator'] = { link = '@operator' }
    G['@lsp.type.parameter'] = { link = '@parameter' }
    G['@lsp.type.property'] = { link = '@property' }
    G['@lsp.type.selfKeyword'] = { link = 'Builtin' }
    G['@lsp.type.string.rust'] = { link = 'String' }
    G['@lsp.type.typeAlias'] = { link = 'Type' }
    G['@lsp.type.unresolvedReference'] = { undercurl = true, sp = C.error }
    G['@lsp.type.variable'] = {} -- use treesitter styles for regular variables
    G['@lsp.typemod.class.defaultLibrary'] = { link = 'Type' }
    G['@lsp.typemod.enum.defaultLibrary'] = { link = 'Type' }
    G['@lsp.typemod.enumMember.defaultLibrary'] = { link = 'Constant' }
    G['@lsp.typemod.function.defaultLibrary'] = { link = 'Function' }
    G['@lsp.typemod.keyword.async'] = { link = 'Macro' }
    G['@lsp.typemod.macro.defaultLibrary'] = { link = 'Macro' }
    G['@lsp.typemod.method.defaultLibrary'] = { link = 'Function' }
    G['@lsp.typemod.operator.injected'] = { link = 'Operator' }
    G['@lsp.typemod.string.injected'] = { link = 'String' }
    G['@lsp.typemod.type.defaultLibrary'] = { link = 'Type' }
    G['@lsp.typemod.variable.defaultLibrary'] = { link = 'Variable' }
    G['@lsp.typemod.variable.injected'] = { link = 'Variable' }
    G['@lsp.typemod.variable.globalScope'] = { link = 'Macro' }
    -- Things that seems to be missing?
    G['@annotation'] = { link = 'PreProc' }
    G['@diff.plus'] = { link = 'DiffAdd' }
    G['@diff.minus'] = { link = 'DiffDelete' }
    G['@diff.delta'] = { link = 'DiffChange' }
    G['@character'] = { link = 'Character' }
    G['@character.special'] = { link = 'SpecialChar' }
    G['@string.special'] = { fg = C.yellow.base } -- For escape characters within a string.
    G['@tag'] = { fg = C.blue1 } -- Tags like html tag names.
    G['@tag.delimiter'] = { fg = C.fg } -- Tag delimiter like `<` `>` `/`
    G['@tag.attribute'] = { fg = C.yellow.base } -- Tag attribute like `id` `class`
    G['@constant'] = { link = 'Constant' }
    G['@number'] = { link = 'Constant' }
    G['@float'] = { link = 'Constant' }
    G['@boolean'] = { link = 'Constant' }
    G['@constant.macro'] = { link = 'Constant' }
    G['@constant.builtin'] = { link = 'Constant' }
    G['@repeat'] = { link = 'Keyword' }
    G['@conditional'] = { link = 'Keyword' }
    G['@class'] = { link = 'Keyword' }
    G['@include'] = { link = 'Include' }
    G['@macro'] = { link = 'Macro' }
    G['@module'] = { fg = C.yellow.base }
    G['@module.builtin'] = { link = 'Builtin' }
    G['@preproc'] = { link = 'Macro' }
    G['@attribute'] = { link = 'Macro' }
    G['@function.macro'] = { link = 'Macro' }
    G['@define'] = { link = 'Macro' }
    G['@exception'] = { link = 'Macro' }
    G['@function'] = { link = 'Function' }
    G['@method'] = { link = 'Function' }
    G['@method.call'] = { link = 'Function' }
    G['@function.call'] = { link = 'Function' }
    G['@function.builtin'] = { link = 'Function' }
    G['@property.cpp'] = { fg = C.cyan.base }
    G['@namespace'] = { fg = C.yellow.dim }
    G['@type'] = { link = 'Type' }
    G['@type.definition'] = { link = 'Type' }
    G['@type.qualifier'] = { link = 'Keyword' }
    G['@storageclass'] = { link = 'Keyword' }
    G['@none'] = { link = 'None' }

    -- Treesitter context.
    local bg
    local fg
    if O.ts_context.dark_background then
        bg = C.black
        fg = C.gray1
    else
        bg = C.gray1
        fg = C.gray4
    end
    G.TreesitterContext = { bg = bg }
    G.TreesitterContextLineNumber = { fg = fg, bg = bg }

    -- Neorg
    G['@neorg.headings.1.title'] = { link = '@markup.heading.1' }
    G['@neorg.headings.1.prefix'] = { link = '@markup.heading.1' }
    G['@neorg.headings.2.title'] = { link = '@markup.heading.2' }
    G['@neorg.headings.2.prefix'] = { link = '@markup.heading.2' }
    G['@neorg.headings.3.title'] = { link = '@markup.heading.3' }
    G['@neorg.headings.3.prefix'] = { link = '@markup.heading.3' }
    G['@neorg.headings.4.title'] = { link = '@markup.heading.4' }
    G['@neorg.headings.4.prefix'] = { link = '@markup.heading.4' }
    G['@neorg.headings.5.title'] = { link = '@markup.heading.5' }
    G['@neorg.headings.5.prefix'] = { link = '@markup.heading.5' }
    G['@neorg.headings.6.title'] = { link = '@markup.heading.6' }
    G['@neorg.headings.6.prefix'] = { link = '@markup.heading.6' }

    -- Trouble.
    G.TroubleNormal = { bg = C.bg_float }
    G.TroubleText = { fg = C.fg }
    G.TroubleCount = { fg = C.white1, bg = C.gray2 }
    G.TroubleIndent = { fg = C.gray1 }
    G.TroubleFile = { fg = C.cyan.bright }
    G.TroubleFoldIcon = { fg = C.gray1 }

    -- Vimtex.
    G.texGroup = { fg = C.fg }
    G.texEnvArgName = { fg = C.cyan.base }
    G.texMathEnvArgName = { link = 'texEnvArgName' }
    G.texArg = { fg = C.cyan.base }
    G.texStyleItal = { fg = C.fg, italic = true }
    G.texPartArgTitle = { fg = C.cyan.base }
    G.texDelim = { fg = C.fg }
    G.texMathGroup = { fg = C.fg }
    G.texMathArg = { fg = C.fg }
    G.texMathZoneEnv = { fg = C.fg }
    G.texMathZoneTI = { fg = C.fg }
    G.texMathDelim = { fg = C.fg }
    G.texMathDelimZoneTI = { fg = C.blue2 }
    G.texMathSuper = { fg = C.fg }
    G.texFileArg = { fg = C.green.base }
    G.texRefArg = { fg = C.magenta.bright }
    G.texGroupError = { link = 'DiagnosticError' }
    G.texMathSub = { fg = C.fg }
    G.texCmdEnv = { fg = C.blue2 }
    G.texSpecialChar = { fg = C.orange.base }
    G.texLigature = { fg = C.fg }
    G.texFileOpt = { fg = C.fg }
    G.texVerbZone = { link = 'String' }
    G.texLstZone = { link = 'String' }

    -- Whichkey.
    G.WhichKey = { fg = C.yellow.base }
    G.WhichKeyFloat = { bg = C.bg_float }
    G.WhichKeyDesc = { fg = C.white0 }
    G.WhichKeyGroup = { fg = C.orange.bright, bold = true }
    G.WhichKeyBorder = { fg = C.black0, bg = C.bg_float }
    -- TODO: Unsure.
    G.WhichKeySeperator = {}
    G.WhichKeyValue = {}

    -- Rainbow delimiters
    G.RainbowDelimiterOrange = { fg = C.orange.base }
    G.RainbowDelimiterYellow = { fg = C.yellow.bright }
    G.RainbowDelimiterBlue = { fg = C.blue2 }
    G.RainbowDelimiterRed = { fg = C.red.bright }
    G.RainbowDelimiterGreen = { fg = C.green.bright }

    return G
end

return M
