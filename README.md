# 🌊 shaunsingh/material.nvim

## Modified version of marko-cerovac/material.nvim, based off of the moonlight theme for vscode: https://github.com/atomiks/moonlight-vscode-theme

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/71196912/117550047-02eb4000-b00c-11eb-9a63-c26ab4612fa5.png">

## ✨ Features

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

## ⚓ Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'shaunsingh/moonlight.nvim'
```

```lua
-- If you are using Packer
use 'shaunsingh/moonlight.nvim'
```

## 🐬 Usage

Enable the colorscheme:
```vim 
"Vim-Script:
colorscheme material
```

```lua
--Lua:
require('material').set()
```

To enable the `material-nvim` theme for `Lualine`, simply specify it in your lualine settings:
( make sure to set the theme to 'material-nvim', as 'material' already exists built in to lualine)

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'material-nvim'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

Set the style using:
```vim 
"Vim-Script:
let g:material_style = 'moonlight'
```

```lua
--Lua:
vim.g.material_style = "moonlight"
```

| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| material_style                      | `"moonlight"` | This version of the theme only includes the moonlight version of the theme
| material_italic_comments            | `false`     | Make comments italic                                                                                                                                            |
| material_italic_keywords            | `false`     | Make keywords italic                                                                                                                                            |
| material_italic_functions           | `false`     | Make functions italic                                                                                                                                           |
| material_italic_variables           | `false`     | Make variables and identifiers italic                                                                                                                           |
| material_contrast                   | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| material_borders                    | `false`     | Enable the border between verticaly split windows visable
| material_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background

```lua
-- Example config in lua
vim.g.material_style = 'moonlight'         
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_functions = true
vim.g.material_italic_variables = false
vim.g.material_contrast = true
vim.g.material_borders = false 
vim.g.material_disable_background = false

-- Load the colorscheme
require('material').set()
```

```vim
" Example config in Vim-Script
let g:material_style = 'moonlight'         
let g:material_italic_comments = true
let g:material_italic_keywords = true
let g:material_italic_functions = true
let g:material_italic_variables = false
let g:material_contrast = true
let g:material_borders = false 
let g:material_disable_background = false

-- Load the colorsheme
colorscheme material
```

Original Readme: https://github.com/marko-cerovac/material.nvim/blob/pure-lua/README.md

