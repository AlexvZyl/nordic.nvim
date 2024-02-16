-- Notes and format from @folke/tokyonight.nvim.

local C = require 'nordic.colors'

return {
    -- LSP Semantic Token Groups
    -- Types follow the pattern @lsp.type.<type>.<filetype>
    -- These groups are for the Neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.

    --- Misc
    ['@comment'] = { link = 'Comment' },
    ['@comment.documentation'] = { link = 'Comment' },
    ['@operator'] = { fg = C.blue1 }, -- For any operator: `+`, but also `->` and `*` in C.

    --- Punctuation
    ['@punctuation.delimiter'] = { link = '@operator' }, -- For delimiters ie: `.`
    ['@punctuation.bracket'] = { link = '@operator' },   -- For brackets and parens.
    ['@punctuation.special'] = { link = 'Macro' },       -- For special punctutation that does not fall in the catagories before.
    -- ['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true },
    ['@markup.list'] = { link = '@operator' },                 -- For special punctutation that does not fall in the catagories before.
    ['@markup.list.markdown'] = { fg = C.yellow.base, bold = true },

    --- Literals
    ['@string.documentation'] = { link = 'String' },
    ['@string.regex'] = { fg = C.magenta.bright },  -- For regexes.
    ['@string.escape'] = { fg = C.magenta.bright }, -- For escape characters within a string.

    --- Functions
    ['@constructor'] = { link = 'Function' },      -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ['@variable.parameter'] = { fg = C.fg, italic = true }, -- For parameters of a function.
    ['@variable.parameter.builtin'] = { link = 'Builtin' }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    --- Keywords
    ['@keyword'] = { link = 'Keyword' },          -- For keywords that don't fall in previous categories.
    ['@keyword.coroutine'] = { link = 'Macro' },  -- For keywords related to coroutines.
    ['@keyword.function'] = { link = 'Keyword' }, -- For keywords used to define a fuction.
    ['@label'] = { link = 'Keyword' },            -- For labels: `label:` in C and `:label:` in Lua.

    --- Types
    ['@type.builtin'] = { link = 'Type' },
    ['@variable.member'] = { link = 'Field' },
    ['@field'] = { link = 'Field' }, -- For fields.
    ['@property'] = { link = 'Field' },

    --- Identifiers
    ['@variable'] = { link = 'Variable' },        -- Any variable name that does not have another highlight.
    ['@variable.builtin'] = { link = 'Builtin' }, -- Variable names that are defined by the languages, like `this` or `self`.
    ['@module.builtin'] = { link = 'Builtin' },

    --- Text
    --['@spell'] = {},
    -- ["@text.literal.markdown"] = { },
    ['@text.literal.markdown_inline'] = { bg = C.black2, fg = C.fg },

    ['@markup.raw.markdown_inline'] = { bg = C.black2, fg = C.fg },
    ['@markup.link'] = { fg = C.cyan.base },
    ["@markup.list.unchecked"] = { fg = C.fg }, -- For brackets and parens.
    ["@markup.list.checked"] = { link = 'Field' }, -- For brackets and parens.
    ["@diff.plus"] = { link = "DiffAdd" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.delta"] = { link = "DiffChange" },
    ["@module"] = { fg = C.yellow.base },

    ['@text.reference'] = { link = 'Link' },
    ['@text.todo.unchecked'] = { fg = C.blue1 },      -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.bright }, -- For brackets and parens.
    ['@text.warning'] = { fg = C.warning },
    ['@text.danger'] = { fg = C.error },
    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },

    -- TSX
    ['@tag.tsx'] = { fg = C.blue1 },
    ['@constructor.tsx'] = { fg = C.blue1 },
    ['@tag.delimiter.tsx'] = { fg = C.blue1 },

    --LSP Semantic Token Groups
    ['@lsp.type.boolean'] = { link = 'Boolean' },
    ['@lsp.type.builtinType'] = { link = 'Type' },
    ['@lsp.type.comment'] = { link = 'Comment' },
    ['@lsp.type.enum'] = { link = 'Type' },
    ['@lsp.type.enumMember'] = { link = 'Field' },
    ['@lsp.type.escapeSequence'] = { link = '@string.escape' },
    ['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' },
    ['@lsp.type.interface'] = { link = 'Keyword' },
    ['@lsp.type.keyword'] = { link = 'Keyword' },
    ['@lsp.type.namespace'] = { link = 'Namespace' },
    ['@lsp.type.number'] = { link = 'Number' },
    ['@lsp.type.operator'] = { link = '@operator' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.selfKeyword'] = { link = 'Builtin' },
    ['@lsp.type.string.rust'] = { link = 'String' },
    ['@lsp.type.typeAlias'] = { link = 'Type' },
    ['@lsp.type.unresolvedReference'] = { undercurl = true, sp = C.error },
    ['@lsp.type.variable'] = {}, -- use treesitter styles for regular variables
    ['@lsp.typemod.class.defaultLibrary'] = { link = 'Type' },
    ['@lsp.typemod.enum.defaultLibrary'] = { link = 'Type' },
    ['@lsp.typemod.enumMember.defaultLibrary'] = { link = 'Constant' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = 'Function' },
    ['@lsp.typemod.keyword.async'] = { link = 'Macro' },
    ['@lsp.typemod.macro.defaultLibrary'] = { link = 'Macro' },
    ['@lsp.typemod.method.defaultLibrary'] = { link = 'Function' },
    ['@lsp.typemod.operator.injected'] = { link = 'Operator' },
    ['@lsp.typemod.string.injected'] = { link = 'String' },
    ['@lsp.typemod.type.defaultLibrary'] = { link = 'Type' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = 'Variable' },
    ['@lsp.typemod.variable.injected'] = { link = 'Variable' },
    ['@lsp.typemod.variable.globalScope'] = { link = 'Macro' },

    -- Things that seems to be missing?
    ['@text.todo'] = { link = 'Todo' },
    ['@text.note'] = { link = 'Note' },
    ['@string.special'] = { fg = C.yellow.base }, -- For escape characters within a string.
    ['@tag'] = { fg = C.blue1 },                  -- Tags like html tag names.
    ['@tag.delimiter'] = { fg = C.fg },           -- Tag delimiter like `<` `>` `/`
    ['@tag.attribute'] = { fg = C.yellow.base },  -- Tag attribute like `id` `class`
    ['@text'] = { link = 'Normal' },              -- For strings considered text in a markup language.
    ['@text.strong'] = { bold = true },
    ['@text.emphasis'] = { italic = true },       -- For text to be represented with emphasis.
    ['@text.underline'] = { underline = true },   -- For text to be represented with an underline.
    ['@text.strike'] = { strikethrough = true },  -- For strikethrough text.
    ['@text.title'] = { link = 'Title' },         -- Text that is part of a title.
    ['@text.uri'] = { underline = true },         -- Any URI like a link or email.
    ['@text.literal'] = { link = 'String' },
    ['@constant'] = { link = 'Constant' },
    ['@number'] = { link = 'Constant' },
    ['@float'] = { link = 'Constant' },
    ['@boolean'] = { link = 'Constant' },
    ['@constant.macro'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Constant' },
    ['@keyword.return'] = { link = 'Keyword' },
    ['@keyword.export'] = { link = 'Keyword' },
    ['@repeat'] = { link = 'Keyword' },
    ['@conditional'] = { link = 'Keyword' },
    ['@class'] = { link = 'Keyword' },
    ['@keyword.operator'] = { link = 'Keyword' },
    ['@include'] = { link = 'Include' },
    ['@macro'] = { link = 'Macro' },
    ['@preproc'] = { link = 'Macro' },
    ['@attribute'] = { link = 'Macro' },
    ['@function.macro'] = { link = 'Macro' },
    ['@define'] = { link = 'Macro' },
    ['@exception'] = { link = 'Macro' },
    ['@function'] = { link = 'Function' },
    ['@method'] = { link = 'Function' },
    ['@method.call'] = { link = 'Function' },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    ['@property.cpp'] = { fg = C.cyan.base },
    ['@namespace'] = { fg = C.yellow.dim },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Type' },
    ['@type.qualifier'] = { link = 'Keyword' },
    ['@storageclass'] = { link = 'Keyword' },
    ['@none'] = { link = 'None' },

    -- These groups are for the Neovim tree-sitter highlights.
    ["@annotation"] = { link = "PreProc" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@number.float"] = { link = "Float" },
    ["@keyword.import"] = { link = "Include" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "@function.method" },
    ["@namespace.builtin"] = { link = "@variable.builtin" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@markup"] = { link = "@none" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.raw"] = { link = "String" },
    ["@markup.math"] = { link = "Special" },
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.emphasis"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { link = "Title" },
    ["@comment.note"] = { fg = C.hint },
    ["@comment.error"] = { fg = C.error },
    ["@comment.hint"] = { fg = C.hint },
    ["@comment.info"] = { fg = C.info },
    ["@comment.warning"] = { fg = C.warning },
    ["@comment.todo"] = { fg = C.todo },
    ["@markup.link.url"] = { link = "Underlined" },
}
