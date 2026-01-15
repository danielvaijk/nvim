local telescope = require("telescope.builtin")

-- File operations.
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Write buffer" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.set("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Write buffer and quit" })
vim.keymap.set("n", "<leader>wa", "<cmd>wa<cr>", { desc = "Write all changed buffers" })

-- Telescope.
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Telescope help tags" })
