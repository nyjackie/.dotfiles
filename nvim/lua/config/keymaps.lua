-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set
opt = { noremap = true, silent = true }
-- Beginning of line
set("i", "<C-b>", "<ESC>^i", opt)
set("i", "<C-e>", "<End>", opt)

-- Line break
set("n", "<C-j>", "i<CR><ESC>", opt)

-- search and replace
set("n", "<leader>sr", ":%s/<C-r><C-w>//g<Left><Left>", { noremap = true, silent = true, desc = "search and replace" })
-- match all occurance
-- set("n", "<C-h>", "*N", { noremap = true, silent = true, desc = "match all occurance" })
