return {
    "williamboman/mason.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        -- Variables
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        -- Mason setup and UI config
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- List of servers for mason to install
            ensure_installed = {
                "rust_analyzer",
                "lua_ls",
                "pylsp"
            },
            -- Auto-install configured servers (with lspconfig)
            automatic_installation = true, -- Not the same as ensure_installed
        })

    end,
}
