-- Options are loaded before lazy.nvim starts.
vim.opt.expandtab = true -- Insert spaces instead of literal tab characters.
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.relativenumber = true
vim.opt.guicursor = "a:block" -- Use a block cursor in every mode.
vim.opt.list = true
vim.opt.listchars = {
  tab = "▸ ",
  trail = "·",
  extends = "»",
  precedes = "«",
  nbsp = "⎵",
}

-- Match ~/.vimrc's disabled syntax highlighting.
vim.cmd("syntax off")

-- Disable Snacks' smooth-scroll animation so all cursor motions snap instantly.
vim.g.snacks_animate = false

-- Keep C-family files at eight spaces, while web files use two-space indentation.
local indent_group = vim.api.nvim_create_augroup("user_filetype_indent", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 8
    vim.opt_local.softtabstop = 8
    vim.opt_local.shiftwidth = 8
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
  end,
})
