return {
  {
  "nvim-lualine/lualine.nvim",
   config = function()
   require("lualine").setup({
      options = {
           theme = "catppuccin",
       },
        sections = {
          lualine_c = {'filename', 'lsp-status'},
        }
  })
  end,
},
  { 'pnx/lualine-lsp-status' }
}
