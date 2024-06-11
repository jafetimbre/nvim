vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")


vim.g.mapleader = " "

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- run the config file for tree-sitter 3rd party languages and settings
require("config.treesitter")

-- enable nvim theme colorscheme
vim.cmd.colorscheme "catppuccin"
