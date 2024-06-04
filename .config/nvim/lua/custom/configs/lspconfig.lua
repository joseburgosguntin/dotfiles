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

lspconfig.gleam.setup {
  cmd = { "gleam", "lsp" },
  filetypes = { "gleam" },
  -- root_dir = lspconfig.util.root_pattern("gleam.toml"),
  on_attach = on_attach,
  capabilities = capabilities,
}

local servers = {
  "hls",
  "tsserver",
  "tailwindcss",
  "cssls",
  "svelte",
  "clangd",
}

for _, lsp  in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
