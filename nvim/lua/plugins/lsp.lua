return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        sourcekit = {
          cmd = { "xcrun", "sourcekit-lsp" },
          filetypes = { "swift" },
          root_dir = require("lspconfig.util").root_pattern("Package.swift", ".git"),
        },
      },
    },
  },
}
