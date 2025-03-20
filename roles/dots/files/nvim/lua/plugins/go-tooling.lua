return {
  {
    "fredrikaverpil/godoc.nvim",
    version = "*",
    dependencies = {
      { "nvim-telescope/telescope.nvim" },   -- optional
      { "folke/snacks.nvim" },               -- optional
      { "echasnovski/mini.pick" },           -- optional
      { "ibhagwan/fzf-lua" },                -- optional
      {
        "nvim-treesitter/nvim-treesitter",
        opts = {
          ensure_installed = { "go" },
        },
      },
    },
    build = "go install github.com/lotusirous/gostdsym/stdsym@latest", -- optional
    cmd = { "GoDoc" },                                                 -- optional
    opts = {

      picker = {
        type = "telescope", -- or "fzf" or "minipick"
      },
    },                                                         -- see further down below for configuration
  }
}
