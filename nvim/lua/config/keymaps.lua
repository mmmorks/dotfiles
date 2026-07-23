-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ported from ~/.vimrc's `nnoremap <space> za`, rebound since <space> is the LazyVim leader
vim.keymap.set("n", "<leader>uz", "za", { desc = "Toggle fold under cursor" })
