# nordic.nvim

[![Test](https://github.com/AlexvZyl/nordic.nvim/workflows/Test/badge.svg)](https://github.com/AlexvZyl/nordic.nvim/actions?workflow=Test) 

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but `Aurora` > `Frost`.

The idea behind this colorscheme is to use Nord, but add some darker colors and use `Aurora` more prominently than Nord themes usually do.

# ⚠️ Status

This colorscheme is still in early development, so please do not hesitate if there is anything wrong or if you have any suggestions!  Currently I am [dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) it to make sure I do not miss anything.

# 📷 Showcase

*Nvim-tree, lsp, bar-bar, lualine and treesitter:*
![image](https://user-images.githubusercontent.com/81622310/214236416-5cfe1638-e3f9-4f24-a330-489c341ce0fc.png)

<details>
<summary>Telescope</summary>

*Flat:*
![image](https://user-images.githubusercontent.com/81622310/213918343-a4daac04-9e98-4ba1-89f8-0e8eb4b73c10.png)
*Classic:*
![image](https://user-images.githubusercontent.com/81622310/213974295-c9381a16-6f02-49dd-88b3-64f03ef9d5c7.png)

</details>

<details>
<summary>Dashboard & which-key</summary>

![image](https://user-images.githubusercontent.com/81622310/214096444-7b1c3b7c-59cc-4e71-be6d-8c30522cfe68.png)

</details>

# 🎨 Palette

TODO

# 📦 Installation

With [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'AlexvZyl/nordic.nvim'
```

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'AlexvZyl/nordic.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require 'nordic' .load()
  end
}
```

With [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
```

# 🚀 Usage

Using vim:

```vim
colorscheme nordic
```

Using lua:

```lua
vim.cmd.colorscheme 'nordic'
-- or
require 'nordic' .load()
```

Using with `lualine`:

```lua
require 'lualine' .setup {
  options = {
    theme = 'nordic'
  }
}
```

To get the palette in lua:

```lua
local palette = require 'nordic.colors'
```

# ⚙️ Configuration

Nordic will use the default values, unless `setup` is called.  Below is the default configuration.

```lua
require 'nordic' .setup {
  telescope = {
    -- Available styles: `classic`, `flat`.
    style = 'flat'
  },
  -- These can contain anything that neovim understands.
  -- (fg, bg, italic, bold, etc.)
  syntax = {
    comments = {
      italic = true,
      bold = false
    },
    operators = {
      italic = false,
      bold = true
    },
    keywords = {
      italic = false,
      bold = true
    }
  }
}
```

# 🗒️ Supported Plugins

This is the list of currently supported plugins.  I use these myself, if you want other plugins to be supported either open an issue or submit a PR!

- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)

# 🎙️ Acknowledgements

- [folke/tokyonight](https://github.com/folke/tokyonight.nvim) served as an excellent example for a Neovim theme.
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) for bright & dim versions of the Nord palette.
