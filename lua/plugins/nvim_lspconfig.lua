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
      jedi_language_server = {},
      ruff = {},
      clangd = {},
      cmake = {},
      texlab = {},
      jsonls = {},
    },
  },
}
