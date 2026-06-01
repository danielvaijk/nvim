return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file explorer" },
    { "<leader>fe", "<cmd>NvimTreeFindFile<cr>", desc = "Reveal current file" },
  },
  opts = {
    disable_netrw = true,
    hijack_netrw = true,
    hijack_directories = {
      enable = true,
      auto_open = true,
    },
    update_focused_file = {
      enable = true,
      update_root = {
        enable = true,
      },
    },
    view = {
      width = 32,
      signcolumn = "yes",
    },
    renderer = {
      group_empty = true,
      highlight_git = true,
      icons = {
        git_placement = "after",
        show = {
          git = true,
          folder = true,
          file = true,
          folder_arrow = true,
        },
      },
    },
    filters = {
      dotfiles = false,
      git_ignored = false,
    },
    git = {
      enable = true,
      ignore = false,
    },
    actions = {
      open_file = {
        quit_on_open = false,
      },
    },
  },
}
