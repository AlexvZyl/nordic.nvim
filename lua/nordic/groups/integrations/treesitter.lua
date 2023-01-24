-- Notes and format from @folke/tokyonight.nvim.

local c = require 'nordic.colors'
local o = require('nordic.config').options
local m = require('nordic.utils').merge

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
	['@text.todo'] = { link = 'Todo' },
	['@text.note'] = { fg = c.bg, bg = c.info },
	['@text.warning'] = { fg = c.bg, bg = c.warning },
	['@text.danger'] = { fg = c.bg, bg = c.error },
	['@constructor'] = { fg = c.white0 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
	-- TSConditional       = { };    -- For keywords related to conditionnals.
	-- TSConstant          = { };    -- For constants
	-- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
	-- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
	-- TSError             = { };    -- For syntax/parser errors.
	-- TSException         = { };    -- For exception related keywords.
	-- ["@field"] = { fg = c.green.base }, -- For fields.
	-- TSFloat             = { };    -- For floats.
	-- TSFunction          = { };    -- For function (calls and definitions).
	-- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
	-- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
	-- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
	-- ["@keyword"] = { fg = c.orange.base }, -- For keywords that don't fall in previous categories.
	-- ["@keyword.function"] = { fg = c.orange.base }, -- For keywords used to define a fuction.
	['@label'] = { fg = c.blue1 }, -- For labels: `label:` in C and `:label:` in Lua.
	-- TSMethod            = { };    -- For method calls and definitions.
	-- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
	-- TSNone              = { };    -- TODO: docs
	-- TSNumber            = { };    -- For all numbers
	-- ["@operator"] = { fg = c.orange.bright }, -- For any operator: `+`, but also `->` and `*` in C.
	['@parameter'] = {
		fg = c.white0,
		italic = true,
	}, -- For parameters of a function.
	-- TSParameterReference= { };    -- For references to parameters of a function.
	-- ["@property"] = { fg = c.cyan.base }, -- Same as `TSField`.
	['@punctuation.delimiter'] = { fg = c.white0 }, -- For delimiters ie: `.`
	['@punctuation.bracket'] = { fg = c.white0 }, -- For brackets and parens.
	-- ["@punctuation.special"] = { fg = c.white0 }, -- For special punctutation that does not fall in the catagories before.
	-- TSRepeat            = { };    -- For keywords related to loops.
	-- TSString            = { };    -- For strings.
	['@string.regex'] = { fg = c.green.dim }, -- For regexes.
	['@string.escape'] = { fg = c.green.bright }, -- For escape characters within a string.
	-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
	-- TSType              = { };    -- For types.
	-- TSTypeBuiltin       = { };    -- For builtin types.
	['@variable'] = { fg = c.white0 }, -- Any variable name that does not have another highlight.
	-- ["@variable.builtin"] = { fg = c.blue1 }, -- Variable names that are defined by the languages, like `this` or `self`.

	['@tag'] = { fg = c.blue1 }, -- Tags like html tag names.
	['@tag.delimiter'] = { fg = c.white0 }, -- Tag delimiter like `<` `>` `/`
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

	-- Lua
	-- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

	-- FROM LEGACY CODEBASE.
	-----------------------
	-- Magentas.
	['@constant'] = { fg = c.magenta.bright },
	['Number'] = { fg = c.magenta.bright },
	['@number'] = { fg = c.magenta.bright },
	['@float'] = { fg = c.magenta.bright },
	['@boolean'] = { fg = c.magenta.bright },
	['@constant.macro'] = { fg = c.magenta.bright },
	['@constant.builtin'] = { fg = c.magenta.bright },
	-- Oranges (Keywords).
	['@keyword'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@keyword.return'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@keyword.function'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@keyword.export'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@keyword.operator'] = m({ fg = c.orange.bright }, o.syntax.operators),
	['@repeat'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@conditional'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@operator'] = m({ fg = c.orange.bright }, o.syntax.operators),
	['@class'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@type.qualifier'] = m({ fg = c.orange.base }, o.syntax.keywords),
	['@storageclass'] = m({ fg = c.orange.base }, o.syntax.keywords),
	-- Reds.
	['@preproc'] = { fg = c.red.base, bold = true },
	['@attribute'] = { fg = c.red.base, bold = true },
	['@include'] = { fg = c.red.base, bold = true },
	['@macro'] = { fg = c.red.base, bold = true },
	['@function.macro'] = { fg = c.red.base, bold = true },
	['@define'] = { fg = c.red.base, bold = true },
	['@exception'] = { fg = c.red.base, bold = true },
	['@punctuation.special'] = { fg = c.red.base, bold = true },
	-- Blues.
	['@function'] = { fg = c.blue2 },
	['@method'] = { fg = c.blue2 },
	['@method.call'] = { fg = c.blue2 },
	['@function.call'] = { fg = c.blue2 },
	['@function.builtin'] = { fg = c.blue2 },
	['@variable.builtin'] = { fg = c.blue0, italic = true },
	-- Cyan.
	['@field'] = { fg = c.cyan.base },
	['@property'] = { fg = c.cyan.base },
	['@property.cpp'] = { fg = c.cyan.base },
	-- Yellows.
	['@namespace'] = { fg = c.yellow.dim, italic = true },
	['@type'] = { fg = c.yellow.base },
	['@type.builtin'] = { fg = c.yellow.base },
	['@type.definition'] = { fg = c.yellow.base },
	-----------------------
}
