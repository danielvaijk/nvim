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

    vim.lsp.enable("ts_ls")
    vim.lsp.enable("lua_ls")
  end,
}
