return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set(
      "n",
      "<leader>hu",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "Toggle the quick menu" }
    )
    keymap.set(
      "n",
      "<leader>hm",
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
      { desc = "Mark file with harpoon" }
    )
    keymap.set("n",
      "<leader>hn",
      "<cmd>lua require('harpoon.ui').nav_next()<cr>",
      { desc = "Go to next harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>hp",
      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      { desc = "Go to previous harpoon mark" }
    )

    -- Keymaps for quick navigation to the first 4 files
    keymap.set(
      "n",
      "<leader>hh",
      "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>hj",
      "<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>hk",
      "<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>hl",
      "<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
  end,
}
