return {
  'numToStr/FTerm.nvim',
  config = function()
    -- Setup the terminal
    require('FTerm').setup {
      border = 'single',
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
    }

    -- Toggle terminal keybindings
    vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
    vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
  end,
}
