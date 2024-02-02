local base = require "plugins.configs.lspconfig"
local on_attach = base.on_attach 
local capabilities = base.capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"rust"},
  root_dir = util.root_pattern("Cargo.toml"),
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      }
    }
  }
})

local servers = {"hls", "tsserver", "tailwindcss", "cssls"}

for _, lsp  in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
