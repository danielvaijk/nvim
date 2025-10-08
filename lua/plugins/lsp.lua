return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          workspace = {
            -- Load Neovim's runtime files so the language server knows about all of Neovim's APIs.
            -- This will load for *every* Lua project, but at least it's simpler than project detection.
            library = vim.api.nvim_get_runtime_file("", true),
          },
        },
      },
    })

    vim.lsp.config("gopls", {
      settings = {
        gopls = {
          analyses = {
            -- Report unused function parameters
            unusedparams = true,
          },
          -- Run staticcheck, a popular Go linter, for additional code quality checks
          staticcheck = true,
          -- Use gofumpt for formatting (stricter version of gofmt with additional style rules)
          gofumpt = true,
        },
      },
    })

    vim.lsp.enable("ts_ls")
    vim.lsp.enable("lua_ls")
    vim.lsp.enable("gopls")
  end,
}
