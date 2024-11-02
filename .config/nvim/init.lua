vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true

vim.g.mapleader = " "

vim.cmd('syntax enable');
vim.cmd('filetype plugin indent on')
vim.cmd('colorscheme habamax')

require('core.options')

local ok, _ = pcall(require, 'core.keymaps')
if not ok then
    print('Failed to load keymaps')
end

require('core.autocmds')

local ok, _ = pcall(require, 'core.plugins')
if not ok then
    print('Failed to load plugins')
end

