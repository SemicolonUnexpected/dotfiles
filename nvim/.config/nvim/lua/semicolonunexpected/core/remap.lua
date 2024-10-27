-- Set leader to space
vim.g.mapleader = ' '

-- Move selection in visual mode with 'J' and 'K'
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
