return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build =
    'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      -- Clone the default Telescope configuration
      local telescopeConfig = require("telescope.config")
      local vimgrep_arguments = { unpack(telescopeConfig.values.vimgrep_arguments) }

      -- I want to search in hidden/dot files.
      table.insert(vimgrep_arguments, "--hidden")

      -- I don't want to search in the `.git` directory.
      table.insert(vimgrep_arguments, "--glob")
      table.insert(vimgrep_arguments, "!.git/*")

      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
        defaults = {
          -- `hidden = true` is not supported in text grep commands.
          vimgrep_arguments = vimgrep_arguments,
        },
        pickers = {
          find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
          },
        },
      })

      local builtin = require("telescope.builtin")
      vim.keymap.set('n', 'fd', builtin.find_files, {})
      vim.keymap.set('n', 'fg', builtin.live_grep, {})
      vim.keymap.set('n', 'fb', builtin.buffers, {})
      vim.keymap.set('n', 'fh', builtin.help_tags, {})

      require("telescope").load_extension("ui-select")
      require('telescope').load_extension('fzf')
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",

  },

}
