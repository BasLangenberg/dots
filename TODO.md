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
  - [x] [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [ ] Languages
    - [x] LSP LSP LSP
    - [x] Go
      - [x] Fix install
      - [x] Add Gopls and other tooling
    - [x] Rust (???), RUST!
      - [x] [https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/](some instructions to walk through)
    - [x] Terraform / Terragrunt / HCL
      - [ ] terraform-ls vs terraform-lsp (Autocomplete is non existend now)
    - [x] YAML / K8S / Ansible
      - [x] https://github.com/redhat-developer/yaml-language-server
      - [x] https://stackoverflow.com/questions/66615677/set-yaml-schema-kubernetes-for-autocompletion-with-nvim-lspconfig
    - [x] Ruby
      - [x] Solargraph
    - [x] Python
    - [x] Node
    - [ ] Markdown Writing (Maybe, not really required...)
      - [ ] [vim-markdown](https://github.com/preservim/vim-markdown)
      - [ ] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
      - [ ] [blogpost](https://alpha2phi.medium.com/vim-neovim-plugins-for-writing-d18414c7b21d)
    - [ ] Run PackerSync
      - [ ] nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
  - [x] Treesitter
    - [x] Initially including support for all lsp languages?

- [x] Add software
  - [x] terraform versions
  - [x] terragrunt
  - [x] kubectx
  - [x] kubens
  - [x] chefdk
  - [x] ripgrep

- [ ] Kitchen configuration for Digital Ocean (Quick test again new host to ensure this builds correctly)

- [ ] Look into potential tmux awesomeness
  - [x] Alternate session (Jump between sessions quickly)

- [ ] zsh
  - [ ] Fix autocorrect crap
  - [ ] Use terminal theme to match vim

- [ ] Cleanup
  - [ ] zshrc
  - [ ] Check other files (Cleanup quickly or add to list)

- [ ] SSH
  - [ ] Include key?!?!?!
  - [ ] ssh-agent on startup

- [ ] Tmux sessionizer: In temporary window
- [ ] Fix awkward copy-paste in Vim
- [ ] Copy golangci-lint binary to correct directory instead of /usr/local/bin/<ARCHIVEDIR> (Rate limits on github prevent me from fixing at time of writing)
