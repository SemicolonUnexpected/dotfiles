return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- Set keymaps
    local keymap = vim.keymap -- For conciseness

    keymap.set(
      "n",
      "<leader>hu",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "Toggle the quick menu" }
    )
    keymap.set(
      "n",
      "<leader>m",
      "<cmd>lua require('harpoon.mark').add_file()<cr>",
      { desc = "Mark file with harpoon" }
    )
    keymap.set("n",
      "<leader>n",
      "<cmd>lua require('harpoon.ui').nav_next()<cr>",
      { desc = "Go to next harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>p",
      "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
      { desc = "Go to previous harpoon mark" }
    )

    -- Keymaps for quick navigation to the first 4 files
    keymap.set(
      "n",
      "<leader>y",
      "<cmd>lua require('harpoon.ui').nav_file(1)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>u",
      "<cmd>lua require('harpoon.ui').nav_file(2)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>i",
      "<cmd>lua require('harpoon.ui').nav_file(3)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
    keymap.set(
      "n",
      "<leader>o",
      "<cmd>lua require('harpoon.ui').nav_file(4)<cr>",
      { desc = "Go to previous harpoon mark" }
    )
  end,
}
