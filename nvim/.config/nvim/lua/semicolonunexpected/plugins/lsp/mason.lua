return {
  'williamboman/mason.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    -- Setup the Mason itself
    require('mason').setup {
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
        backdrop = 90,
      },
    }

    local servers = require 'semicolonunexpected.config.lsp-servers'

    -- Auto install the required servers
    require('mason-tool-installer').setup { ensure_installed = servers.ensure_installed }

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

    -- Setup the language servers
    require('mason-lspconfig').setup { automatic_enable = true }

    -- Configure servers using vim.lsp.config
    for _, server_name in ipairs(servers.ensure_installed) do
      local server_options = servers.servers[server_name] or {}
      server_options.capabilities = vim.tbl_deep_extend('force', {}, vim.deepcopy(capabilities), server_options.capabilities or {})

      vim.lsp.config(server_name, server_options)
    end

    -- Global default diagnotics
    vim.diagnostic.config {
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
    }
  end,
}
