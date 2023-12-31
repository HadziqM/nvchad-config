local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local config = require("lspconfig")

local overrides = require("custom.configs.overrides")
-- overriding default lspconfig
for key, value in pairs(overrides.lsp) do

  local opt = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  if value.filetypes then
    opt.filetypes = value.filetypes
  end

  if value.init_options then
    opt.init_options = value.init_options
  end

  config[key].setup(opt)
end

