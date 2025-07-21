return {
  ensure_installed = {
    'stylua',
    'lua_ls',
    'omnisharp',
    'isort',
    'black',
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
    omnisharp = {
      cmd = { 'dotnet', vim.fn.stdpath 'data' .. '/mason/packages/omnisharp/libexec/OmniSharp.dll' },
      -- capabilities = {},
      settings = {
        EnableEditorConfigSupport = true,
        FormattingOptions = {
          --          OrganizeImports = true,
          --          NewLinesForBracesInTypes = false,
          --          NewLinesForBracesInMethods = false,
          --          NewLinesForBracesInProperties = false,
          --          NewLinesForBracesInAccessors = false,
          --          NewLinesForBracesInAnonymousMethods = false,
          --          NewLinesForBracesInControlBlocks = false,
          --          NewLinesForBracesInAnonymousTypes = false,
          --          NewLinesForBracesInObjectCollectionArrayInitializers = false,
          --          NewLinesForBracesInLambdaExpressionBody = false,
          --          NewLinesForBracesInMultiLineStatements = false,
        },
      },
    },
    --     pyright = {},
    -- csharp_ls = {},
  },
}
