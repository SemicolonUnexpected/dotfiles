-- Set leader to space
vim.g.mapleader = " "

local keymap = vim.keymap -- For conciseness

-- Move selection in visual mode with 'J' and 'K'
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<cr>gv=gv")
