return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    -- You don't need to set any of these options.
    -- IMPORTANT!: this is only a showcase of how you can set default options!
    require("telescope").setup {
      extensions = {
        file_browser = {
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
        },
      },
    }

    -- To get telescope-file-browser loaded and working with telescope,
    -- you need to call load_extension, somewhere after setup function:
    require("telescope").load_extension "file_browser"

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
  end,
}
