require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "ts_ls",                          -- TypeScript / JavaScript
  "eslint",                         -- lint diagnostics + code actions
  "jsonls",                         -- package.json, tsconfig.json, etc.
  "yamlls",                         -- YAML (docker-compose, CI configs, k8s)
  "dockerls",                       -- Dockerfile
  "docker_compose_language_service" -- docker-compose.yml
}
vim.lsp.enable(servers)

-- ts_ls: better inlay hints for TS/JS
vim.lsp.config("ts_ls", {
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayFunctionLikeReturnTypeHints = true,
      },
    },
  },
})

-- yamlls: schema-aware completion for compose files, GitHub Actions, etc.
vim.lsp.config("yamlls", {
  settings = {
    yaml = {
      schemaStore = { enable = true, url = "https://www.schemastore.org/api/json/catalog.json" },
      schemas = {
        ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose*.yml",
      },
    },
  },
})

-- read :h vim.lsp.config for changing options of lsp servers
