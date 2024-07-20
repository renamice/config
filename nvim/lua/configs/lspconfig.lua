-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities
local util = require "lspconfig/util"

local lspconfig = require "lspconfig"

-- lsps with default config
lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvier = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "rust" },
  root_dir = util.root_pattern "Cargo.toml",
  settings = {
    ["rust_analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
}

lspconfig.basedpyright.setup {
  capabilities = capabilities,
  settings = {
    basedpyright = {
      typeCheckingMode = "standard",
    },
  },
}
