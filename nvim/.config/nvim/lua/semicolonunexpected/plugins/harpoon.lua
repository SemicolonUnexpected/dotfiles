return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local keymap = vim.keymap
    local harpoon = require 'harpoon'

    harpoon:setup()

    keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    keymap.set('n', '<C-h>', function()
      harpoon:list():select(1)
    end)
    keymap.set('n', '<C-j>', function()
      harpoon:list():select(2)
    end)
    keymap.set('n', '<C-k>', function()
      harpoon:list():select(3)
    end)
    keymap.set('n', '<C-l>', function()
      harpoon:list():select(4)
    end)
  end,
}
