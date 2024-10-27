return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    -- Set keymaps
    local keymap = vim.keymap -- For conciseness

    keymap.set('n', '<C-h>', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", { desc = 'Toggle the quick menu' })
    keymap.set('n', '<C-j>', "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = 'Mark file with harpoon' })
    keymap.set('n', '<leader>n', "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = 'Go to next harpoon mark' })
    keymap.set('n', '<leader>p', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = 'Go to previous harpoon mark' })

    -- Keymaps for quick navigation to the first 4 files
    keymap.set('n', '<C-7>', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>")
    keymap.set('n', '<C-8>', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>")
    keymap.set('n', '<C-9>', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>")
    keymap.set('n', '<C-0>', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>")
  end,
}
