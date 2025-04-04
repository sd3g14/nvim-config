return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  dependencies = {
    "mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = function() end },
  },
  opts = {
    ---@type lspconfig.options
    servers = {
      ruff = {},
      clangd = {},
      texlab = {},
    },
  },
}
