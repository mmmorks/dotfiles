-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- ported from ~/.vimrc: custom cursorline highlight
vim.api.nvim_create_autocmd({ "VimEnter", "WinEnter", "BufWinEnter" }, {
  group = vim.api.nvim_create_augroup("custom_cursorline", { clear = true }),
  callback = function()
    vim.opt_local.cursorline = true
    vim.api.nvim_set_hl(0, "CursorLine", { ctermbg = 236 })
    vim.api.nvim_set_hl(0, "CursorLineNr", { ctermfg = "White" })
  end,
})

vim.api.nvim_create_autocmd("WinLeave", {
  group = "custom_cursorline",
  callback = function()
    vim.opt_local.cursorline = false
  end,
})

-- ported from ~/.vimrc: PEP8-ish indent for python files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.py",
  group = vim.api.nvim_create_augroup("python_indent", { clear = true }),
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.textwidth = 100
    vim.opt_local.expandtab = true
    vim.opt_local.autoindent = true
    vim.bo.fileformat = "unix"
  end,
})
