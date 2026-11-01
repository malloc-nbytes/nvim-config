return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Do not render LSP inlay hints, including clangd's parameter-name hints.
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
