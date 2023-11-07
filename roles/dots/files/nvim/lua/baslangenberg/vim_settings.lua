-- This is a comment in lua

vim.cmd([[
  " Generic settings
  set enc=utf-8
  set fileencoding=utf-8

  " Tabs setup
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set autoindent

  " More general settings (after plugin)
  set backspace=indent,eol,start
  set ruler
  set number
  set relativenumber
  set showcmd
  set incsearch
  set hlsearch
  set showmode

  set noswapfile                  " Don't use swapfile
  set nobackup                    " Don't create annoying backup files
  set nowritebackup
  set ignorecase                  " Search case insensitive...
  set smartcase                   " ... but not when search pattern contains upper case characters

  set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

  nnoremap <leader>, :nohlsearch<CR>

  " Seriously, why split differt from this...
  set splitbelow
  set splitright

  " Colours, Syntax, Etc
  syntax on

  " Enable mouse, cause I occasionally touch it anyway
  set mouse=a

  " Enable underline
  set cursorline

  let mapleader = "\<Space>"

  " Save
  nnoremap <Leader>w :w<CR>

  " Copy / Paste
  vmap <Leader>y "+y
  vmap <Leader>d "+d
  nmap <Leader>p "+p
  nmap <Leader>P "+P
  vmap <Leader>p "+p
  vmap <Leader>P "+P

  " Vim expand region settings
  vmap v <Plug>(expand_region_expand)
  vmap <C-v> <Plug>(expand_region_shrink)

  " Buffer movement
  nmap <Leader>n :bp<CR>
  vmap <Leader>n :bp<CR>
  nmap <Leader>m :bn<CR>
  vmap <Leader>m :bn<CR>
  nmap <Leader>x :bd<CR>
  vmap <Leader>x :bd<CR>

  " This eases movement between splits
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>

  " Paste toggle
  set pastetoggle=<F10>

  set clipboard+=unnamedplus
  let g:clipboard = {
            \   'name': 'win32yank-wsl',
            \   'copy': {
            \      '+': 'win32yank.exe -i --crlf',
            \      '*': 'win32yank.exe -i --crlf',
            \    },
            \   'paste': {
            \      '+': 'win32yank.exe -o --lf',
            \      '*': 'win32yank.exe -o --lf',
            \   },
            \   'cache_enabled': 0,
            \ }
  let g:loaded_perl_provider = 0

  " Persistent undo
  if !isdirectory("/tmp/.vim-undo-dir")
    call mkdir("/tmp/.vim-undo-dir", "", 0700)
  endif
  set undodir=/tmp/.vim-undo-dir
  set undofile

  " Make file completion not behave like the most unintuitive thing ever
  set wildmode=longest,list,full
  set wildmenu

]])
