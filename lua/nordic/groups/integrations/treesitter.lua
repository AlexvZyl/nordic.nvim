-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'
local o = require('nordic.config').options

return {
    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For comment blocks.
    ['@comment'] = { link = 'Comment' },
    ['@text.todo'] = { link = 'Todo' },
    ['@text.note'] = { link = 'Note' },
    ['@text.warning'] = { fg = c.bg, bg = c.warning },
    ['@text.danger'] = { fg = c.bg, bg = c.error },
    ['@constructor'] = { link = '@function' }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    ['@label'] = { fg = c.blue1 }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    ['@parameter'] = {
        fg = c.fg,
        italic = true,
    }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    ['@punctuation.delimiter'] = { fg = c.fg }, -- For delimiters ie: `.`
    ['@punctuation.bracket'] = { fg = c.fg }, -- For brackets and parens.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    ['@string.regex'] = { fg = c.green.dim }, -- For regexes.
    ['@string.escape'] = { fg = c.green.bright }, -- For escape characters within a string.
    ['@string.special'] = { fg = c.yellow.base }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    ['@variable'] = { fg = c.fg }, -- Any variable name that does not have another highlight.

    ['@tag'] = { fg = c.blue1 }, -- Tags like html tag names.
    ['@tag.delimiter'] = { fg = c.fg }, -- Tag delimiter like `<` `>` `/`
    ['@tag.attribute'] = { fg = c.yellow.base }, -- Tag attribute like `id` `class`
    ['@text'] = { link = 'Normal' }, -- For strings considered text in a markup language.
    ['@text.reference'] = { fg = c.green.base },
    ['@text.strong'] = { bold = true },
    ['@text.emphasis'] = { italic = true }, -- For text to be represented with emphasis.
    ['@text.underline'] = { underline = true }, -- For text to be represented with an underline.
    ['@text.strike'] = { strikethrough = true }, -- For strikethrough text.
    ['@text.title'] = { link = 'Title' }, -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    ['@text.uri'] = { underline = true }, -- Any URI like a link or email.
    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },
    ['@text.literal'] = { link = 'String' },

    -- Lua
    -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

    ['@constant'] = { link = 'Constant' },
    ['Number'] = { link = 'Constant' },
    ['@number'] = { link = 'Constant' },
    ['@float'] = { link = 'Constant' },
    ['@boolean'] = { link = 'Constant' },
    ['@constant.macro'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Constant' },

    ['@keyword'] = { link = 'Keyword' },
    ['@keyword.return'] = { link = 'Keyword' },
    ['@keyword.function'] = { link = 'Keyword' },
    ['@keyword.export'] = { link = 'Keyword' },
    ['@repeat'] = { link = 'Keyword' },
    ['@conditional'] = { link = 'Keyword' },
    ['@class'] = { link = 'Keyword' },
    ['@operator'] = { link = 'Operator' },
    ['@keyword.operator'] = { link = 'Keyword' },

    ['@macro'] = { link = 'Macro' },
    ['@preproc'] = { link = 'Macro' },
    ['@attribute'] = { link = 'Macro' },
    ['@include'] = { link = 'Macro' },
    ['@function.macro'] = { link = 'Macro' },
    ['@define'] = { link = 'Macro' },
    ['@exception'] = { link = 'Macro' },

    ['@function'] = { link = 'Function' },
    ['@method'] = { link = 'Function' },
    ['@method.call'] = { link = 'Function' },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    ['@variable.builtin'] = { fg = c.blue0, italic = true },

    ['@field'] = { fg = c.cyan.base },
    ['@property'] = { fg = c.cyan.base },
    ['@property.cpp'] = { fg = c.cyan.base },

    ['@namespace'] = { fg = c.yellow.dim, italic = true },
    ['@type'] = { link = 'Type' },
    ['@type.builtin'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Type' },
    ['@punctuation.special'] = { link = 'Type' },
    ['@type.qualifier'] = { link = 'Keyword' },
    ['@storageclass'] = { link = 'Keyword' },
    ['@none'] = { link = 'None' },
    -----------------------
}
