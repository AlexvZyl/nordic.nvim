local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

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
    G['@operator'] = { link = 'Operator' } -- For any operator: `+`, but also `->` and `*` in C.
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
    --- LSP semantic token highlights for typescriptreact
    G['@lsp.type.interface.typescriptreact'] = { link = 'Type' }
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
    G['@lsp.typemod.variable.defaultLibrary'] = { link = 'Builtin' }
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

    return G
end

return M
