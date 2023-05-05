local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local navic = require "nvim-navic"


-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "gopls", "emmet_ls", "jdtls" }

local function on_attach_custom (client, bufnr)
  on_attach(client, bufnr)
  navic.attach(client, bufnr)
end

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach_custom,
    capabilities = capabilities,
    settings = {
      python = {
        analysis = {
          autoSearchPaths = false,
          useLibraryCodeForTypes = false,
          diagnosticMode = "openFilesOnly",
        },
      },
    }
  }
end

lspconfig.gopls.setup {
  cmd = {"gopls", "-remote=auto"},
  on_attach = on_attach_custom,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 750,
  },
  init_options = {
    staticcheck = true,
    gofumpt = true,
    -- memoryMode = "DegradeClosed"
  }
}
