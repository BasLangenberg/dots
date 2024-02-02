# TODO / Ideas


- [ ] Look and feels
  - [ ] Add cappucin in terminal
  - [ ] Add cappucin in zsh (if needed)
  - [ ] Add cappucin in neovim
  - [ ] Add cappucin in tmux

- [ ] GIT - https://www.freecodecamp.org/news/how-to-handle-multiple-git-configurations-in-one-machine/
- [x] Neovim
  - [ ] Refactor config
    - [ ] Lazy instead of Packer
      - [ ] Cleanup old plugins which we do not use anymore, when we're at it anyway
    - [ ] Luafy your old vimrc
    - [ ] Review keybindings
    - [ ] add neo-tree
    - [ ] MISC (When this is ticked, refactor is done for now)
  - [ ] Save buffer on focus change
  - [ ] Fix awkward copy-paste in Vim
  - [ ] Languages
    - [x] Terraform / Terragrunt / HCL
      - [ ] terraform-ls vs terraform-lsp (Autocomplete is non existend now)
    - [x] YAML / K8S / Ansible
      - [x] https://github.com/redhat-developer/yaml-language-server
      - [x] https://stackoverflow.com/questions/66615677/set-yaml-schema-kubernetes-for-autocompletion-with-nvim-lspconfig
      - [ ] Fix Helm / Non recognized files, full of red right now
        - [ ] We should not do any linting on file structures we do not recognize?
        - [ ] How to setup this in the first place?
        - [ ] How to notice that linting is missing? Something in status line would be helpful
    - [ ] Markdown Writing (Maybe, not really required...)
      - [ ] [vim-markdown](https://github.com/preservim/vim-markdown)
      - [ ] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
      - [ ] [blogpost](https://alpha2phi.medium.com/vim-neovim-plugins-for-writing-d18414c7b21d)
    - [ ] Run command to install lazy plugins from Ansible, so we do not need to wait for this after new setup is done

- [ ] Tmux improvements
  - [ ] tmux-sessionizer with prefix in pane running something
  - [ ] Typecraft on YouTube?

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
- [ ] Copy golangci-lint binary to correct directory instead of /usr/local/bin/<ARCHIVEDIR> (Rate limits on github prevent me from fixing at time of writing)

- [ ] Setup Windows Terminal from bootstrap script if possible
- [ ] Fix out of bound installs of Ansible / Pip in bootstrap.sh

- [ ] Fix rebuild of Neovim on every Ansible invoke

# Unimportant TODOs that sounds fun and I need to write down but will probably not happen

- [ ] Make Ansible not report any changes in dots role when ran a second time (IDEMPOTENCY BABY)

# DONE

- [x] Fix Molecule Tests
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

- [x] Tmux improvements
  - [x] Alternate session (Jump between sessions quickly)

- [x] Neovim
  - [x] Only build Neovim when new stable commit exists
    - [x] [Hint](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html)
  - [x] Telescope

  - [x] vim-cmp
  - [x] [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [x] Languages
    - [x] LSP LSP LSP
    - [x] Go
      - [x] Fix install
      - [x] Add Gopls and other tooling
    - [x] Rust (???), RUST!
      - [x] [https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/](some instructions to walk through)
    - [x] Terraform / Terragrunt / HCL
    - [x] YAML / K8S / Ansible
      - [x] https://github.com/redhat-developer/yaml-language-server
      - [x] https://stackoverflow.com/questions/66615677/set-yaml-schema-kubernetes-for-autocompletion-with-nvim-lspconfig
    - [x] Ruby
      - [x] Solargraph
    - [x] Python
    - [x] Node
  - [x] Treesitter
    - [x] Initially including support for all lsp languages?

- [x] Add software
  - [x] terraform versions
  - [x] terragrunt
  - [x] kubectx
  - [x] kubens
  - [x] chefdk
  - [x] ripgrep
