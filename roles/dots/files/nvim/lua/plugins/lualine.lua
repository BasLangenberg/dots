return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons', 'catppuccin/nvim' },
    config = function()
      require("lualine").setup({
        sections = {
          lualine_c = { 'filename', 'lsp-status' },
        }
      })
    end,
  },
  { 'pnx/lualine-lsp-status' }
}
