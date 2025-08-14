return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    options = {
        flavour = "mocha",
    },
    config = function(_, options)
        require("catppuccin").setup(options);
        vim.cmd.colorscheme("catppuccin");
    end,
};
