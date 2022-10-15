-- Tokyonight theme settings, not currently used
vim.g.tokyonight_transparant_sidebar = true
vim.g.tokyonight_transparant = true

-- Material theme settings
vim.g.material_style = "deep ocean"

-- Dark background
vim.opt.background = dark
vim.cmd("colorscheme material")

-- Telescope setup
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
