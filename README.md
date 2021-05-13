# 🌘 shaunsingh/moonlight.nvim

## Modified version of Marko Cerovac's [Material.nvim](https://github.com/marko-cerovac/material.nvim), based off of the [Moonlight Theme](https://github.com/atomiks/moonlight-vscode-theme) for VSCode 

![preview github](https://user-images.githubusercontent.com/71196912/118175481-27755c80-b3fe-11eb-9d70-85a9f936c33d.png)

## 🌠 Features

moonlight.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [WhichKey](https://github.com/liuchengxu/vim-which-key)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

+ Added functions for live theme switching without the need to restart NeoVim

## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'shaunsingh/moonlight.nvim'
```

```lua
-- If you are using Packer
use 'shaunsingh/moonlight.nvim'
```

## 🌓 Usage

Enable the colorscheme:
```vim 
"Vim-Script:
colorscheme moonlight
```

```lua
--Lua:
require('moonlight').set()
```

To enable the `moonlight` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'moonlight'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration


| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| moonlight_italic_comments            | `false`     | Make comments italic                                                                                                                                            |
| moonlight_italic_keywords            | `false`     | Make keywords italic                                                                                                                                            |
| moonlight_italic_functions           | `false`     | Make functions italic                                                                                                                                           |
| moonlight_italic_variables           | `false`     | Make variables and identifiers italic                                                                                                                           |
| moonlight_contrast                   | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| moonlight_borders                    | `false`     | Enable the border between verticaly split windows visable
| moonlight_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background

```lua
-- Example config in lua
vim.g.moonlight_italic_comments = true
vim.g.moonlight_italic_keywords = true
vim.g.moonlight_italic_functions = true
vim.g.moonlight_italic_variables = false
vim.g.moonlight_contrast = true
vim.g.moonlight_borders = false 
vim.g.moonlight_disable_background = false

-- Load the colorscheme
require('moonlight').set()
```

```vim
" Example config in Vim-Script
let g:moonlight_italic_comments = true
let g:moonlight_italic_keywords = true
let g:moonlight_italic_functions = true
let g:moonlight_italic_variables = false
let g:moonlight_contrast = true
let g:moonlight_borders = false 
let g:moonlight_disable_background = false

-- Load the colorsheme
colorscheme moonlight
```

Original Readme: https://github.com/marko-cerovac/material.nvim/blob/pure-lua/README.md

