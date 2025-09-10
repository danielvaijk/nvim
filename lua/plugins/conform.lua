return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      jsx = { "prettier" },
      tsx = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      json = { "prettier" },
      jsonc = { "prettier" },
      markdown = { "prettier" },
      ["markdown.mdx"] = { "prettier" },
      yaml = { "prettier" },
      yml = { "prettier" },
      xml = { "prettier" },
      svg = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = false,
    },
  },
}
