-- File Encoding options
vim.opt.fileencoding = "utf-8"
vim.opt.enc = "utf-8"
vim.opt.expandtab = true

-- Tabs setup
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true

-- More general settings (after plugin)
vim.o.backspace = "indent,eol,start"
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.showmode = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.fileformats = "unix,dos,mac"

--  " Seriously, why split differt from this...
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.mouse = "nvi"

vim.o.clipboard = 'unnamedplus'

-- Persistent undo
if not vim.loop.fs_stat("/tmp/.vim-undo-dir") then
  vim.fn.system({"mkdir", "/tmp/.vim-undo-dir"})
end

vim.opt.undodir = "/tmp/.vim-undo-dir"
vim.opt.undofile = true

--  " Make file completion not behave like the most unintuitive thing ever
vim.o.wildmode = "longest,list,full"
vim.opt.wildmenu = true
