local base = require("plugins.configs.lspconfig")

local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
