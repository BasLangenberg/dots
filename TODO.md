# TODO

- [x] Fix root / become issues

- [x] Aliasses
  - [x] Local alias file (For stuff that's not portable, e.g. jump to work related repos on a work machine)
  - [x] git shortcuts (People probably thought about this a lot already)
    - [x] checkout
    - [x] commit
    - [x] push/pull/fetch

- [x] Fixes
  - [x] Update fzf if newer version is there
  - [x] Update p10k if newer version is there

- [x] Install Docker without using docker desktop

- [x] Fix copy/paste! (Host integration / win32yank)


- [x] Neovim
  - [x] Only build Neovim when new stable commit exists
    - [x] [Hint](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html)
  - [x] Telescope

  - [ ] Luafy your old vimrc
  - [x] vim-cmp
  - [ ] [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [ ] Languages
    - [x] LSP LSP LSP
    - [x] Go
      - [x] Fix install
      - [x] Add Gopls and other tooling
    - [x] Rust (???), RUST!
      - [x] [https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/](some instructions to walk through)
    - [x] Terraform / Terragrunt / HCL
      - [ ] terraform-ls vs terraform-lsp (Autocomplete is non existend now)
    - [ ] YAML / K8S
    - [ ] Ruby / Chef
    - [ ] Python / Ansible
    - [ ] Node
    - [ ] Markdown Writing
      - [ ] [vim-markdown](https://github.com/preservim/vim-markdown)
      - [ ] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
      - [ ] [blogpost](https://alpha2phi.medium.com/vim-neovim-plugins-for-writing-d18414c7b21d)
    - [ ] Run PackerSync
      - [ ] nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
  - [ ] Treesitter
    - [ ] Initially including support for all lsp languages?
  - [ ] [PackerSync on install](https://github.com/wbthomason/packer.nvim/issues/700)

- [ ] Add software
  - [x] terraform versions
  - [ ] terragrunt
  - [ ] kubectx
  - [ ] kubens
  - [ ] chefdk
  - [ ] terragrunt-atlantis-config
  - [x] ripgrep

- [ ] Kitchen configuration for Digital Ocean (Quick test again new host to ensure this builds correctly)

- [ ] Look into potential tmux awesomeness
  - [x] Alternate session (Jump between sessions quickly)

- [ ] zsh
  - [ ] Fix autocorrect crap

- [ ] Cleanup
  - [ ] zshrc
  - [ ] Check other files (Cleanup quickly or add to list)

- [ ] SSH
  - [ ] Include key?!?!?!
  - [ ] ssh-agent on startup
