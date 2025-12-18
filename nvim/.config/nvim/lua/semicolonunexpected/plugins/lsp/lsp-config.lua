return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    { 'j-hui/fidget.nvim', opts = {} },
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, mode)
          mode = mode or 'n'
          vim.keymap.set(mode, keys, func, { buffer = event.buf })
        end

        -- Setup keymaps
        map('gd', require('telescope.builtin').lsp_definitions)
        map('gr', require('telescope.builtin').lsp_references)
        map('gI', require('telescope.builtin').lsp_implementations)
        map('<leader>D', require('telescope.builtin').lsp_type_definitions)
        map('<leader>ds', require('telescope.builtin').lsp_document_symbols)
        map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)
        map('<leader>rn', vim.lsp.buf.rename)
        map('<leader>ca', vim.lsp.buf.code_action, { 'n', 'x' })
        map('gD', vim.lsp.buf.declaration)
      end,
    })
  end,
}
