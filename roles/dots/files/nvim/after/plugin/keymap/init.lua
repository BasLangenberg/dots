-- All remaps should live here?
vim.cmd([[
  nnoremap <C-f> <cmd>silent !tmux neww tmux-sessionizer<CR>
  nnoremap <F5> <cmd>silent lua require("neotest").run.run()<CR>
]])
