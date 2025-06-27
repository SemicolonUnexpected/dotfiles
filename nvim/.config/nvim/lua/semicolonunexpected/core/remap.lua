local km = vim.keymap

-- Set leader to space
vim.g.mapleader = ' '

-- Move selection in visual mode with 'J' and 'K'
km.set('v', 'K', ":m '<-2<CR>gv=gv")
km.set('v', 'J', ":m '>+1<cr>gv=gv")
