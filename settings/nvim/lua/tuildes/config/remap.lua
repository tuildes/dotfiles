vim.g.mapleader = ' '
local km = vim.keymap

km.set('v', 'J', ":m '>+1<CR>gv=gv")
km.set('v', 'K', ":m '<−2<CR>gv=gv")

km.set('n', '<C−d>', '<C−d>zz')
km.set('n', '<C−u>', '<C−u>zz')
