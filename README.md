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
    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Enable brighter float border.
    bright_border = false,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = true,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {},
    -- Cursorline options.
    cursorline = {
        -- Enable bold font in cursorline.
        bold = false,
        -- Avialable styles: 'dark', 'light'.
        theme = 'dark',
        -- Hide the cursorline when the window is not focused.
        hide_unfocused = false,
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
local palette = require 'nordic.colors'
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

For the list of supported plugins, please take a look at [this directory](https://github.com/AlexvZyl/nordic.nvim/tree/main/lua/nordic/groups/integrations).


# 💻 Supported Platforms


For the list of supported platforms, please take a look at [this directory](https://github.com/AlexvZyl/nordic.nvim/tree/main/platforms).

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
