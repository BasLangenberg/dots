-- Generic configuration
lspconfig = require "lspconfig"
util = require "lspconfig/util"

-- Go
lspconfig.gopls.setup {
  cmd = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
}

-- Terraform
require'lspconfig'.terraformls.setup{}

-- Rust
lspconfig.rust_analyzer.setup({
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
