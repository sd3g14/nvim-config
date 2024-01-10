local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach 
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function (client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)    
  end,
  capabilities = capabilities,
}

-- lspconfig.pylsp.setup({on_attach = on_attach,
-- capabilities=capabilities, filetypes={"python"},
-- settings = { pylsp = {plugins = { pycodestyle ={ ignore = {'W391'}, maxLineLength = 100}}}}
-- })

-- lspconfig.pyright.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"python"},
-- })
--
lspconfig.jedi_language_server.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})
