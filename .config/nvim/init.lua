vim.g.mapleader = ' '

require('plugins')
require('themes')
require('keymaps')
require('settings')

require('cfg_treesitter')
require('nvimtree')
require('cfg_cmp')

require("mason").setup()
require('lsp')

