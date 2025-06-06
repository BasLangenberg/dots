# TODO / Ideas for PDM

- [x] Neovim
  - [ ] YAML files not really working with LSP / I'd like to see where I am in the document tree
  - [ ] Save buffer on focus change
  - [ ] Fix awkward copy-paste in Vim
  - [ ] Languages
    - [ ] Markdown Writing (Maybe, not really required...)
      - [ ] [vim-markdown](https://github.com/preservim/vim-markdown)
      - [ ] [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
      - [ ] [blogpost](https://alpha2phi.medium.com/vim-neovim-plugins-for-writing-d18414c7b21d)
      - [ ] Folke/Twilight & Pocco81/true-zen.nvim shizzle?
    - [ ] Run command to install lazy plugins from Ansible, so we do not need to wait for this after new setup is done

- [ ] Look into better bootstrapping
  - [ ] Setup Windows Terminal from bootstrap script if possible

- [ ] SSH
  - [ ] Look into acquiring YubiKeys
  - [ ] ssh-agent on startup?

- [ ] Ansible
  - [ ] Look into an Ansible role for getting releases from Github
  - [ ] [Inspiration](https://github.com/zyedidia/eget)

# Unimportant TODOs that sounds fun and I need to write down but will probably not happen SHAVING YAKS ALL DAY EVERYDAY BABY

- [ ] Make Ansible not report any changes in dots role when ran a second time (IDEMPOTENCY BABY)
- [ ] Split main task yml in multiple thingies and optionally include them so we are not waiting for five years every run

# DONE

- [x] Tmux sessionizer: In temporary window
- [x] Look and feels
  - [x] Add cappucin in terminal
  - [x] Add cappucin in neovim
  - [x] Add cappucin in tmux

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
  - [x] Refactor config
    - [x] Lazy instead of Packer
      - [x] Cleanup old plugins which we do not use anymore, when we're at it anyway
    - [x] Luafy your old vimrc - no
    - [x] Review keybindings
    - [x] add neo-tree
    - [x] MISC (When this is ticked, refactor is done for now)
  - [x] Only build Neovim when new stable commit exists
    - [x] [Hint](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/git_module.html)
  - [x] Telescope

  - [x] vim-cmp
  - [x] [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  - [x] Languages
    - [x] Terraform / Terragrunt / HCL
      - [x] terraform-ls vs terraform-lsp (Autocomplete is non existend now)
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

  - [x] YAML / JSON / K8S / Ansible
    - [x] https://github.com/redhat-developer/yaml-language-server
    - [x] https://stackoverflow.com/questions/66615677/set-yaml-schema-kubernetes-for-autocompletion-with-nvim-lspconfig
    - [x] Schemastore
      - [x] https://www.schemastore.org/json/
      - [x] https://github.com/b0o/SchemaStore.nvim
      - [x] Fix Helm / Non recognized files, full of red right now
      - [x] We should not do any linting on file structures we do not recognize?
      - [x] How to setup this in the first place?
      - [x] How to notice that linting is missing? Something in status line would be helpful

- [x] Add software
  - [x] terraform versions
  - [x] terragrunt
  - [x] kubectx
  - [x] kubens
  - [x] chefdk
  - [x] ripgrep

- [x] Copy golangci-lint binary to correct directory instead of /usr/local/bin/<ARCHIVEDIR> (Rate limits on github prevent me from fixing at time of writing)

- [x] Copy golangci-lint binary to correct directory instead of /usr/local/bin/<ARCHIVEDIR> (Rate limits on github prevent me from fixing at time of writing)

- [x] Tmux improvements
  - [x] tmux-sessionizer with prefix in pane running something
  - [x] fix window rename
  - [x] more plugins?
    - [x] lol tmux is dope out of the box already
  - [x] Typecraft on YouTube?

- [x] GIT - https://www.freecodecamp.org/news/how-to-handle-multiple-git-configurations-in-one-machine/

- [ ] Look into better bootstrapping
  - [x] Fix out of bound installs of Ansible / Pip in bootstrap.sh
  - [x] Fix rebuild of Neovim on every Ansible invoke
