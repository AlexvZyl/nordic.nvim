# 🌒 Nordic

[![Tests](https://github.com/AlexvZyl/nordic.nvim/workflows/Tests/badge.svg)](https://github.com/AlexvZyl/nordic.nvim/actions?workflow=Tests) 

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but Aurora > Frost.  The idea behind this colorscheme is to use Nord, but add some darker colors and use Aurora more prominently than Nord themes usually do.  This ends up creating a colorscheme that is soft on the eyes.

> ⚠️ &nbsp; This colorscheme is still in early development, so please do not hesitate if there is anything wrong or if you have any suggestions!  Currently I am [dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) it to make sure I do not miss anything.

# 📷 Showcase

*Nvim-tree, lsp, bar-bar, lualine and treesitter:*
![image](https://user-images.githubusercontent.com/81622310/214236416-5cfe1638-e3f9-4f24-a330-489c341ce0fc.png)

*Alongside [BTop++](https://github.com/aristocratos/btop) and a Nord wallpaper:*
![image](https://user-images.githubusercontent.com/81622310/215334958-cba79eba-bd86-4ca9-bdf1-32937ce86828.png)

<details>
<summary>Telescope</summary>

*Flat:*
![image](https://user-images.githubusercontent.com/81622310/213918343-a4daac04-9e98-4ba1-89f8-0e8eb4b73c10.png)
*Classic:*
![image](https://user-images.githubusercontent.com/81622310/213974295-c9381a16-6f02-49dd-88b3-64f03ef9d5c7.png)

</details>

<details>
<summary>Dashboard</summary>

![image](https://user-images.githubusercontent.com/81622310/215493953-5d9979cc-acd2-4f1b-8ab8-59892dc1dcc2.png)

</details>

<details>
<summary>Diffview</summary>

![image](https://user-images.githubusercontent.com/81622310/215494492-eb02ce7a-03a3-47e9-84b2-09505acc4d5f.png)

</details>


# 🎨 Palette

TODO

# 📟 Terminal Emulators

Properly rendering fonts can be a complex problem and, as expected, different terminal emulators (TE) have different results.  I personally use [Kitty](https://github.com/kovidgoyal/kitty) due to it having the best font rendering (imo).  So if you use a different TE and the colors seem slightly inconsistent, that might be why.

<details>
<summary>Comparison</summary>

</br>

*[Kitty](https://github.com/kovidgoyal/kitty):*  
![image](https://user-images.githubusercontent.com/81622310/216267238-6ce23751-df00-4ed6-87c7-81dc345df0e9.png)

*[Alacritty](https://github.com/alacritty/alacritty):*  
![image](https://user-images.githubusercontent.com/81622310/216267437-665ba1ca-02df-46c3-a84b-5ef76736164a.png)

*[Neovide](https://github.com/neovide/neovide):*  
![image](https://user-images.githubusercontent.com/81622310/216267855-14502471-c761-4875-be34-3e43968aa39b.png)

</details>

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

Using with lualine:

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
    -- Telesccope custom configs.
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    -- Enable bold keywords.
    bold_keywords = true,
    -- Enable italicized comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Override styling of any highlight group.
    -- (see next section for an example)
    override = {},
    cursorline = {
        bold = false,
        -- Avialable themes: 'dark', 'light'.
        theme = 'light'
    }
}
```

An example of overriding the `TelescopePromptTitle` colors:

```lua
local palette = require 'nordic.colors' .palette
require 'nordic' .setup {
    override = {
        TelescopePromptTitle = {
	    fg = palette.red.bright,
            bg = palette.green.base,
            italic = true,
        },
    }
}
```

# 🗒️ Supported Plugins

This is the list of currently supported plugins.  If you want other plugins to be supported either open an issue or submit a PR!

- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [barbar.nvim](https://github.com/romgrk/barbar.nvim)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [vimtex](https://github.com/lervag/vimtex)
- [noice.nvim](https://github.com/folke/noice.nvim)

# 💻 Supported Platforms

The list of currently supported platforms.

- [kitty](https://github.com/kovidgoyal/kitty)
- [iTerm2](https://github.com/gnachman/iTerm2)
- [Windows Terminal](https://github.com/microsoft/terminal)

# 🎙️ Acknowledgements

- [folke/tokyonight](https://github.com/folke/tokyonight.nvim) served as an excellent example and template to create a Neovim theme.
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim) for bright & dim versions of the Nord palette.
- [Dotfiles](https://github.com/AlexvZyl/.dotfiles) used in the screenshots.

</br>

<p align="center">
    <a href="https://github.com/AlexvZyl/nordic.nvim/graphs/contributors">
        <img src="https://contrib.rocks/image?repo=AlexvZyl/nordic.nvim" />
    </a>
</p>
