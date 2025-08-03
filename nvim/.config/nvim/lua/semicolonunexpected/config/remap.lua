vim.g.mapleader = ' '

local km = vim.keymap

km.set('n', '<Space>', '<Nop>', { noremap = true })

-- Move selection in visual mode with 'J' and 'K'
km.set('v', 'K', ":m '<-2<CR>gv=gv")
km.set('v', 'J', ":m '>+1<cr>gv=gv")

km.set('n', '<leader>e', ':Oil <Enter>')
