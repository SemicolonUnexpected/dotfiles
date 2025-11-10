return {
  ensure_installed = {
    'stylua',
    'lua_ls',
    'isort',
    'black',
    'tinymist',
  },
  servers = {
    lua_ls = {
      -- cmd = {...},
      -- filetypes = { ...},
      -- capabilities = {},
      settings = {
        Lua = {
          completion = {
            callSnippet = 'Replace',
          },
          diagnostics = {
            disable = { 'missing-fields' },
            globals = { 'vim' },
          },
        },
      },
    },
    --    ts_ls = {},
    -- omnisharp = {
    --   cmd = { 'dotnet', vim.fn.stdpath 'data' .. '/mason/packages/omnisharp/libexec/OmniSharp.dll' },
    --   -- capabilities = {},
    --   settings = {
    --     EnableEditorConfigSupport = true,
    --     FormattingOptions = {},
    --   },
    -- },
    jdtls = {
      cmd = {},
    },
    tinymist = {},
    ts_ls = {},
    xmlformatter = {},
    zls = {},
    typestyle = {},
    prettier = {},
  },
}
