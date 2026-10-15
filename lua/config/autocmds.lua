-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Noice turns command messages into popups. Suppress routine copy/paste messages.
vim.schedule(function()
  local ok, router = pcall(require, "noice.message.router")
  if not ok then
    return
  end

  router.add({
    filter = {
      event = "msg_show",
      any = {
        { find = "[Yy]anked" },
        { find = "[Pp]asted" },
      },
    },
    opts = { skip = true },
  })
end)
