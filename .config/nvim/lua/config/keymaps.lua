-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
opt = { noremap = true, silent = true }

-- End of line
set("i", "<C-l>", "<End>", opt)
-- Insert end of line
set("n", "<C-a>", "<End>a", opt)

-- Beggining of line
set("i", "<C-h>", "<ESC>^i", opt)
