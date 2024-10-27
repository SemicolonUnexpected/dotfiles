return {
  ensure_installed = {
    'stylua',
    'lua_ls',
    'isort',
    'black',
    'csharpier',
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
          -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
          diagnostics = { disable = { 'missing-fields' }, globals = { 'vim' } },
        },
      },
    },
    ts_ls = {},
    omnisharp = {
      cmd = { 'dotnet', vim.fn.stdpath 'data' .. '/mason/packages/omnisharp/libexec/OmniSharp.dll' },
      -- capabilities = {},
      settings = {
        FormattingOptions = {
          OrganizeImports = true,
          EnableEditorConfigSupport = true,
          NewLinesForBracesInTypes = false,
          NewLinesForBracesInMethods = false,
          NewLinesForBracesInProperties = false,
          NewLinesForBracesInAccessors = false,
          NewLinesForBracesInAnonymousMethods = false,
          NewLinesForBracesInControlBlocks = false,
          NewLinesForBracesInAnonymousTypes = false,
          NewLinesForBracesInObjectCollectionArrayInitializers = false,
          NewLinesForBracesInLambdaExpressionBody = false,
          NewLinesForBracesInMultiLineStatements = false,
        },
      },
    },
    pyright = {},
    -- csharp_ls = {},
  },
}
