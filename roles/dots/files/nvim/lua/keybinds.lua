-- Setup of more generic keybinds, not related to plugins

-- Remove highlights after search is done
vim.keymap.set('n', '<Leader>,', '<CMD>nohlsearch<CR>')

--  " Save
vim.keymap.set('n', '<Leader>w', '<CMD>w<CR>')

--  " Copy / Paste
vim.keymap.set('v', '<Leader>y', '"+y')
vim.keymap.set('v', '<Leader>d', '"+d')
vim.keymap.set('n', '<Leader>p', '"+p')
vim.keymap.set('n', '<Leader>P', '"+P')
vim.keymap.set('v', '<Leader>p', '"+p')
vim.keymap.set('v', '<Leader>P', '"+P')

--  " Buffer movement
vim.keymap.set('n', '<Leader>n', '<CMD>bp<CR>')
vim.keymap.set('v', '<Leader>n', '<CMD>bp<CR>')
vim.keymap.set('n', '<Leader>m', '<CMD>bn<CR>')
vim.keymap.set('v', '<Leader>m', '<CMD>bn<CR>')
vim.keymap.set('n', '<Leader>d', '<CMD>bd<CR>')
vim.keymap.set('v', '<Leader>d', '<CMD>bd<CR>')

--  " Integration with sessionizer
--  nnoremap <C-f> <cmd>silent !tmux neww tmux-sessionizer<CR>
vim.keymap.set('n', '<C-f>', '<CMD>silent !tmux neww tmux-sessionizer<CR>')
