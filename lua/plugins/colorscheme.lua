return {
  { "loctvl842/monokai-pro.nvim" },
  { "blazkowolf/gruber-darker.nvim" },
  {
    "silentium-theme/silentium.nvim",
    config = function()
      require("silentium").setup({
        accent = "yellow",
      })
    end,
  },
  { "huyvohcmc/atlas.vim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "silentium",
    },
  },
}
