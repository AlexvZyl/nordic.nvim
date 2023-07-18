# 🌒 Nordic

[![Tests](https://github.com/AlexvZyl/nordic.nvim/workflows/Tests/badge.svg)](https://github.com/AlexvZyl/nordic.nvim/actions?workflow=Tests) 

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but Aurora > Frost.  The idea behind this colorscheme is to use Nord, but add some darker colors and use Aurora more prominently than Nord themes usually do.  This ends up creating a colorscheme that is soft on the eyes.

> ⚠️ &nbsp; This colorscheme is still in early development, so please do not hesitate if there is anything wrong or if you have any suggestions!  Currently I am [dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) it to make sure I do not miss anything.

# 📷 Showcase

*From my dotfiles:*
![image](https://github.com/AlexvZyl/nordic.nvim/assets/81622310/cf90906c-22b6-45d9-830d-b4d8b9919714)

<details>
<summary>Telescope</summary>

*Flat:*
![image](https://github.com/AlexvZyl/nordic.nvim/assets/81622310/fd920834-125b-4566-be2c-e32e26b6f969)
*Classic:*
![image](https://user-images.githubusercontent.com/81622310/219347870-05786199-a095-4602-a958-9db90b8acde3.png)

</details>

<details>
<summary>Dashboard</summary>

![image](https://github.com/AlexvZyl/nordic.nvim/assets/81622310/fe2abaff-697f-4eed-92f1-7c8241990e10)

</details>

# 🎨 Palette

For the list of colors/palette, see [this file](https://github.com/AlexvZyl/nordic.nvim/blob/main/lua/nordic/colors/nordic.lua).  Some extra colors and use cases are generated in [this file](https://github.com/AlexvZyl/nordic.nvim/blob/main/lua/nordic/colors/init.lua).

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
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette) return palette end,
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
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Avialable styles: 'dark', 'light'.
        theme = 'dark',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.7,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
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
            underline = true,
            sp = palette.yellow.dim,
            undercurl = false
        }
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
