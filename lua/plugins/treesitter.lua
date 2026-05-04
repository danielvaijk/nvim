return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      -- Programming languages.
      "javascript",
      "typescript",
      "rust",
      "go",
      "lua",
      "c",
      "cpp",
      "c_sharp",
      "java",
      "bash",
      -- Markup languages.
      "html",
      "markdown",
      "markdown_inline",
      -- Template and component syntaxes.
      "tsx",
      -- Styling languages.
      "css",
      -- Data & config formats.
      "json",
      "yaml",
      "toml",
      -- Domain-specific.
      "vim",
      "vimdoc",
      "dockerfile",
      "gitignore",
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
        vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
