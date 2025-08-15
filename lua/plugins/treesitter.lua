return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
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
            },
            auto_install = true,
            highlight = { enable = true },
            indent = {
                enable = true,
                -- We use tree-sitter instead of `:h syntax`, so we deduplicate highlighting.
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
