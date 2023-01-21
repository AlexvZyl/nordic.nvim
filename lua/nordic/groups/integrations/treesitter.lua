-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'

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
    TSNote = { fg = c.bg, bg = c.info },
    ["@text.warning"] = { fg = c.bg, bg = c.warning },
    ["@text.danger"] = { fg = c.bg, bg = c.error },
    ["@constructor"] = { fg = c.magenta.base }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    ["@field"] = { fg = c.green.base }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    ["@keyword"] = { fg = c.orange.base }, -- For keywords that don't fall in previous categories.
    ["@keyword.function"] = { fg = c.orange.base }, -- For keywords used to define a fuction.
    ["@label"] = { fg = c.blue1 }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    ["@operator"] = { fg = c.orange.bright }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@parameter"] = { fg = c.white0 }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    ["@property"] = { fg = c.cyan.base }, -- Same as `TSField`.
    ["@punctuation.delimiter"] = { fg = c.orange.bright }, -- For delimiters ie: `.`
    ["@punctuation.bracket"] = { fg = c.white0}, -- For brackets and parens.
    ["@punctuation.special"] = { fg = c.orange.bright }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    ["@string.regex"] = { fg = c.green.dim }, -- For regexes.
    ["@string.escape"] = { fg = c.green.bright }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    ["@variable"] = { fg = c.white0 }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = c.blue1 }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    ["@text.reference"] = { fg = c.green.base },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.
    ["@text.diff.add"] = { link = "DiffAdd" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    -- Lua
    -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

    -- FROM LEGACY CODEBASE.
    -----------------------
    -- Magentas.
    ["@constant"] = { fg = c.magenta.bright },
    ["Number"] = { fg = c.magenta.bright },
    ["@number"] = { fg = c.magenta.bright },
    ["@float"] = { fg = c.magenta.bright },
    ["@boolean"] = { fg = c.magenta.bright },
    ["@constant.macro"] = { fg = c.magenta.bright },
    -- Oranges (Keywords).
    -- ["@keyword"] = { fg = c.orange, style = { 'bold' } },
    ["@keyword.return"] = { fg = c.orange.base, bold = true },
    -- ["@keyword.function"] = { fg = c.orange.base, bold = true },
    ["@keyword.export"] = { fg = c.orange.base, bold = true },
    ["@keyword.operator"] = { fg = c.orange.base, bold = true },
    ["@repeat"] = { fg = c.orange.base, bold = true },
    ["@conditional"] = { fg = c.orange.base, bold = true },
    -- ["@operator"] = { fg = c.orange.bright, bold = true },
    ["@class"] = { fg = c.orange.base, bold = true },
    ["@type.qualifier"] = { fg = c.orange.base, bold = true },
    ["@storageclass"] = { fg = c.orange.base, bold = true },
    -- Reds.
    ["@preproc"] = { fg = c.red.base, bold = true },
    ["@attribute"] = { fg = c.red.base, bold = true },
    ["@include"] = { fg = c.red.base, bold = true },
    ["@macro"] = { fg = c.red.base, bold = true },
    ["@function.macro"] = { fg = c.red.base, bold = true },
    ["@define"] = { fg = c.red.base, bold = true },
    ["@exception"] = { fg = c.red.base, bold = true },
    -- ["@punctuation.special"] = { fg = c.red, style = { 'bold' } },
    -- Blues.
    ["@function"] = { fg = c.blue2 },
    ["@method"] = { fg = c.blue2 },
    ["@method.call"] = { fg = c.blue2 },
    ["@function.call"] = { fg = c.blue2 },
    ["@function.builtin"] = { fg = c.blue2 },
    -- ["@variable.builtin"] = { fg = c.blue0, italic = true },
    -- Cyan.
    -- ["@field"] = { fg = c.cyan.base },
    -- ["@property"] = { fg = c.cyan.base },
    ["@property.cpp"] = { fg = c.cyan.base },
    -- Yellows.
    ["@namespace"] = { fg = c.yellow.dim, italic = true },
    ["@type"] = { fg = c.yellow.base },
    ["@type.builtin"] = { fg = c.yellow.base },
    ["@type.definition"] = { fg = c.yellow.base },
    -----------------------
}
