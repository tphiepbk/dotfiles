## TPHIEPBK'S CONFIGURATION

### Needed apt packages
+ python3.10-venv
+ rustc
+ ruby-full

### Needed npm packages

/home/tphiepbk/.prebuilt/nodejs/lib</br>
├── corepack@0.23.0</br>
├── express@4.18.3</br>
├── list@2.0.19</br>
├── neovim@5.0.1</br>
├── npm@10.5.0</br>
└── tree-sitter-cli@0.22.</br>

### External opensource utilities

+ ***lsd***: The next gen ls command - https://github.com/lsd-rs/lsd
+ ***bat***: A cat(1) clone with wings - https://github.com/sharkdp/bat
+ ***fzf***: A command-line fuzzy finder - https://github.com/junegunn/fzf
+ ***ripgrep***: ripgrep recursively searches directories for a regex pattern while respecting your gitignore - https://github.com/BurntSushi/ripgrep
+ ***fd***: A simple, fast and user-friendly alternative to 'find' - https://github.com/sharkdp/fd
+ ***glow***: Render markdown on the CLI, with pizzazz! - https://github.com/charmbracelet/glow

### Neovim (version 0.9.5)

Use ***lazyvim*** - http://www.lazyvim.org/ for all configurations.

Directory structure

/home/tphiepbk/.config/nvim
├── lazy-lock.json
├── lua
│   ├── plugins
│   │   ├── noice.lua
│   │   ├── mason.lua
│   │   ├── bufferline.lua
│   │   ├── lualine.lua
│   │   ├── git.lua
│   │   ├── mini_hipatterns.lua
│   │   ├── telescope.lua
│   │   ├── inc_rename.lua
│   │   ├── colorscheme.lua
│   │   ├── mini_animate.lua
│   │   ├── flash.lua
│   │   ├── notify.lua
│   │   ├── treesitter.lua
│   │   ├── dashboard.lua
│   │   ├── lsp_config.lua
│   │   └── incline.lua
│   └── config
│       ├── options.lua
│       ├── autocmds.lua
│       ├── keymaps.lua
│       └── lazy.lua
├── README.md
├── stylua.toml
├── init.lua
├── lazyvim.json
└── LICENSE

### Some images
![Neovim screenshot 1](images/neovim1.png)

Visit http://patorjk.com/software/taag to get cool string like this.

![Neovim screenshot 2](images/neovim2.png)

![Neovim screenshot 3](images/neovim3.png)


### Inspired by: https://github.com/craftzdog/dotfiles-public
### Many thanks to all developers, appreciate it :D
