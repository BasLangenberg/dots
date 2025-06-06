return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup({
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls", "html", "lua_ls", "pyright", "solargraph", "terraformls",
          "gopls", "htmx", "jsonls", "yamlls", "jdtls"
        },
      })
    end,
    lazy = false,
    opts = {
      automatic_installation = true,
    },
  },
  {
    "b0o/schemastore.nvim",
  },
  {
    'nvim-java/nvim-java',
  },
  {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = ({
          null_ls.builtins.formatting.hclfmt
        })

      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { 'folke/neodev.nvim' },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")

      -- Typescript
      lspconfig.ts_ls.setup({
        capabilities = capabilities
      })

      -- HTML
      lspconfig.html.setup({
        capabilities = capabilities
      })

      -- Lua
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      -- Python
      lspconfig.pyright.setup({
        capabilities = capabilities
      })

      -- Ruby
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })

      -- Terraform
      lspconfig.terraformls.setup({
        capabilities = capabilities,
        init_options = {
          terraform = {
            path = vim.fn.expand('$HOME/bin/terraform')
          }
        }
      })

      -- Go
      lspconfig.gopls.setup({
        cmd = { "gopls", "serve" },
        filetypes = { "go", "gomod" },
        root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
          },
        },
      })

      -- HTMX
      lspconfig.htmx.setup {}
      -- TODO: Setup schemastore for Yaml / JSON
      -- json (pronounced Sjasohn)
      lspconfig.jsonls.setup({
        capabilities = capabilities,
        settings = {
          json = {
            schemas = require('schemastore').json.schemas(),
            validate = { enable = true },
          },
        },
      })

      -- yaml
      lspconfig.yamlls.setup({
        settings = {
          yaml = {
            schemaStore = {
              -- You must disable built-in schemaStore support if you want to use
              -- this plugin and its advanced options like `ignore`.
              enable = false,
              -- Avoid TypeError: Cannot read properties of undefined (reading 'length')
              url = "",
            },
            schemas = require('schemastore').yaml.schemas(),
          },
        },
      })

      -- java
      vim.lsp.enable({ "jdtls" })

      -- Format on save
      vim.api.nvim_create_autocmd({ "BufWritePre" }, {
        callback = vim.lsp.buf.format,
      })

      -- Format go imports on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        pattern = '*.go',
        callback = function()
          vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })
        end
      })

      -- LSP keymaps
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, {})
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, {})
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, {})
      vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, {})
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, {})
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, {})
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, {})
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
      vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, {})
    end,
  },
  {
    'j-hui/fidget.nvim',
    tag = 'legacy',
    config = function()
      require("fidget").setup {
        -- options
      }
    end,
  },
}
