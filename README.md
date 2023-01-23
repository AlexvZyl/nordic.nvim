# nordic.nvim

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but `Aurora` > `Frost`.  

The idea behind this colorscheme is to use Nord, but add some darker colors and use `Aurora` more prominently than Nord themes usually do.

# ⚠️ Status

This colorscheme is still early in development, so please do not hesitate if there is anything wrong or if you have any suggestions!  Currently I am [dogfooding](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) it to make sure I did not miss anything.

# 🎨 Palette

TODO

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

# 📷 Showcase

*Nvim-tree, bar-bar, lualine and treesitter:*
![image](https://user-images.githubusercontent.com/81622310/213918910-7e9e4068-3eef-4d68-b192-4b0200cc1631.png)

### Telescope

*Flat:*
![image](https://user-images.githubusercontent.com/81622310/213918343-a4daac04-9e98-4ba1-89f8-0e8eb4b73c10.png)

*Classic*
![image](https://user-images.githubusercontent.com/81622310/213969601-fe2157c2-3feb-4b91-9e52-5b5a18d5fe99.png)

# ⚙️ Configuration

```lua
require 'nordic' .setup {
  telescope = {
    style = 'flat'
  }
}
```

# 📦 Installation

With [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'AlexvZyl/nordic.nvim'
```

With [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'AlexvZyl/nordic.nvim', { 'branch': 'main' }
```
