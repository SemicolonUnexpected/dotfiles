-- Telescope, the most GOATED plugin of all time
return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
      },
    })

    telescope.load_extension("fzf")

    -- Set keymaps
    local keymap = vim.keymap -- For conciseness

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>")
    keymap.set("n", "<leader>lg", "<cmd>Telescope live_grep<cr>")
    keymap.set("n", "<leader>r", "<cmd>Telescope registers<cr>")
    end,
}
