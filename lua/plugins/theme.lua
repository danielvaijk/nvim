return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    options = {
        flavour = "mocha",
        transparent_background = true,
    },
    config = function(_, options)
        require("catppuccin").setup(options)
        vim.cmd.colorscheme("catppuccin")

        -- Additional transparency for the background.
        vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    end,
}
