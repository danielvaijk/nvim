-- Leader keys.
vim.g.mapleader = " ";
vim.g.maplocalleader = "\\";

-- Line numbers.
vim.opt.number = true;              -- Show line numbers.
vim.opt.relativenumber = true;      -- Show relative line numbers.

-- Indentation.
vim.opt.expandtab = true;           -- Convert Tab key presses to spaces.
vim.opt.shiftwidth = 4;             -- Number of spaces for each identation level.
vim.opt.tabstop = 4;                -- How many columns a \t character displays as.
vim.opt.softtabstop = 4;            -- How many columns the Tab key inserts/deletes.
vim.opt.autoindent = true;          -- New lines inherit indentation from the previous line.
vim.opt.smartindent = true;         -- Automatically indent after { and other code structures.

-- File handling.
vim.opt.hidden = true;              -- Allow unsaved buffers in background.
vim.opt.backup = false;             -- Don't create backup files.
vim.opt.swapfile = false;           -- Disable swap files.
vim.opt.undofile = true;            -- Persistent undo across sessions.

-- Searching.
vim.opt.hlsearch = true;            -- Highlight search matches.
vim.opt.incsearch = true;           -- Show matches while typing.
vim.opt.ignorecase = true;          -- Case insensitive search.
vim.opt.smartcase = true;           -- Case sensitive if uppercase is used.

-- Visual feedback.
vim.opt.cursorline = true;          -- Highlight current line.
vim.opt.signcolumn = "yes";         -- Always show sign column.
vim.opt.colorcolumn = "";           -- Hide the line length guide by default.
