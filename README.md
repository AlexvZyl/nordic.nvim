# 🌒 Nordic

[![Tests](https://github.com/AlexvZyl/nordic.nvim/workflows/Tests/badge.svg)](https://github.com/AlexvZyl/nordic.nvim/actions?workflow=Tests) 

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but Aurora > Frost.  The idea behind this colorscheme is to use Nord, but add some darker colors and use Aurora more prominently than Nord themes usually do.  This ends up creating a colorscheme that is soft on the eyes.

> ⚠️ &nbsp; This colorscheme is still in early development, so please do not hesitate if there is anything wrong or if you have any suggestions!  Currently I am [dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) it to make sure I do not miss anything.

# 📷 Showcase

*Nvim-tree, lsp, bar-bar, lualine and treesitter:*
![image](https://user-images.githubusercontent.com/81622310/219347174-035d2b63-7645-44a3-be15-119c829add90.png)

*Kitty and BTop++:*
![image](https://user-images.githubusercontent.com/81622310/217228212-619a8735-d5be-4c83-837d-3ab0cd4a33c0.png)

<details>
<summary>[WIP] Mixed with onedark</summary>

![image](https://user-images.githubusercontent.com/81622310/219348746-ab68f109-5cf5-42dd-8c72-48c6976231df.png)

</details>

<details>
<summary>Telescope</summary>

*Flat:*
![image](https://user-images.githubusercontent.com/81622310/219347783-017a0e5a-f38d-4eb0-9d7c-29fc90527fc6.png)
*Classic:*
![image](https://user-images.githubusercontent.com/81622310/219347870-05786199-a095-4602-a958-9db90b8acde3.png)

</details>

<details>
<summary>Dashboard</summary>

![image](https://user-images.githubusercontent.com/81622310/219345149-4385bb9b-54de-488d-b0f3-a846b723ff1a.png)

</details>

<details>
<summary>Diffview</summary>

![image](https://user-images.githubusercontent.com/81622310/219347704-376d040d-6e30-4918-9dd1-06b3cd29035d.png)

</details>


# 🎨 Palette

TODO

# 📟 Terminal Emulators

Properly rendering fonts can be a complex problem and, as expected, different terminal emulators (TE) have different results.  I personally use [Kitty](https://github.com/kovidgoyal/kitty) due to it having the best font rendering (imo).  So if you use a different TE and the colors seem slightly inconsistent, that might be why.

<details>
<summary>Comparison</summary>

</br>

*[Kitty](https://github.com/kovidgoyal/kitty):*  
![image](https://user-images.githubusercontent.com/81622310/217228588-ca059166-84b3-416c-a372-e547e57f8f3e.png)

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
    -- Available themes: 'nordic', 'onedark'.
    -- Onedark is WIP.
    theme = 'nordic',
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Nordic specific options.
    -- Set all to false to use original Nord colors.
    -- Adjusts some colors to make the theme a bit nicer (imo).
    nordic = {
        -- Reduce the overall amount of blue in the theme (diverges from base Nord).
        reduced_blue = true,
    },
    -- Onedark specific options.
    -- Set all to false to keep original onedark colors.
    -- Adjusts some colors to make the theme a bit nicer (imo).
    -- WIP.
    onedark = {
        -- Brighten the whites to fit the theme better.
        brighter_whites = true,
    },
    -- Override the styling of any highlight group.
    override = {},
    cursorline = {
        -- Enable bold font in cursorline.
        bold = false,
        -- Avialable styles: 'dark', 'light'.
        theme = 'light',
        -- Hide the cursorline when the window is not focused.
        hide_unfocused = true,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
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
- [fidget.nvim](https://github.com/j-hui/fidget.nvim)

# 💻 Supported Platforms

The list of currently supported platforms.

- [kitty](https://github.com/kovidgoyal/kitty)
- [iTerm2](https://github.com/gnachman/iTerm2)
- [Windows Terminal](https://github.com/microsoft/terminal)
- [wezterm](https://github.com/wez/wezterm)
- [foot](https://codeberg.org/dnkl/foot)

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
