# TPHIEPBK'S CONFIGURATION

## Needed apt packages
+ python3.10-venv
+ rustc
+ ruby-full

## Needed npm packages

/home/tphiepbk/.prebuilt/nodejs/lib</br>
├── corepack@0.23.0</br>
├── express@4.18.3</br>
├── list@2.0.19</br>
├── neovim@5.0.1</br>
├── npm@10.5.0</br>
└── tree-sitter-cli@0.22.</br>

## External opensource utilities

+ ***lsd***: The next gen ls command - https://github.com/lsd-rs/lsd
+ ***bat***: A cat(1) clone with wings - https://github.com/sharkdp/bat
+ ***fzf***: A command-line fuzzy finder - https://github.com/junegunn/fzf
+ ***ripgrep***: ripgrep recursively searches directories for a regex pattern while respecting your gitignore - https://github.com/BurntSushi/ripgrep
+ ***fd***: A simple, fast and user-friendly alternative to 'find' - https://github.com/sharkdp/fd
+ ***glow***: Render markdown on the CLI, with pizzazz! - https://github.com/charmbracelet/glow

## Neovim (version 0.9.5)

Use ***lazyvim*** - http://www.lazyvim.org/ for all configurations.

***Directory*** structure

/home/tphiepbk/.config/nvim</br>
├── lazy-lock.json</br>
├── lua</br>
│   ├── plugins</br>
│   │   ├── noice.lua</br>
│   │   ├── mason.lua</br>
│   │   ├── bufferline.lua</br>
│   │   ├── lualine.lua</br>
│   │   ├── git.lua</br>
│   │   ├── _disabled_flash.lua</br>
│   │   ├── mini_hipatterns.lua</br>
│   │   ├── telescope.lua</br>
│   │   ├── inc_rename.lua</br>
│   │   ├── colorscheme.lua</br>
│   │   ├── _disabled_which_key.lua</br>
│   │   ├── notify.lua</br>
│   │   ├── treesitter.lua</br>
│   │   ├── neotree.lua</br>
│   │   ├── dashboard.lua</br>
│   │   ├── autosave.lua</br>
│   │   ├── lsp_config.lua</br>
│   │   └── incline.lua</br>
│   └── config</br>
│       ├── options.lua</br>
│       ├── autocmds.lua</br>
│       ├── keymaps.lua</br>
│       └── lazy.lua</br>
├── README.md</br>
├── stylua.toml</br>
├── init.lua</br>
├── lazyvim.json</br>
└── LICENSE</br>

## Keymaps

Leader key: `<Space>`

| Leader | Key 1      | Key 2  | Action                     |
|:------:|:----------:|:------:|:--------------------------:|
| Yes    | `<Space>`  |        | Telescope find files       |
| Yes    | `/`        |        | Telescope live grep        |
| No     | `Alt`      | `jk`   | Move line(s)               |
| No     | `Tab`      |        | Next tab                   |
| No     | `Shift`    | `Tab`  | Previous tab               |
| No     | `s`        | `s`    | Split windows horizontally |
| No     | `s`        | `v`    | Split windows vertically   |
| Yes    | `q`        | `q`    | Quit                       |
| Yes    | `q`        | `a`    | Quit all                   |
| Yes    | `w`        | `q`    | Save and quit              |
| Yes    | `r`        | `n`    | Incremental Rename         |

## Screenshots

Visit http://patorjk.com/software/taag to get cool string like this.

![Neovim screenshot 1](images/neovim1.png)

![Neovim screenshot 2](images/neovim2.png)

![Neovim screenshot 3](images/neovim3.png)


## Inspired by: https://github.com/craftzdog/dotfiles-public
## Many thanks to all developers, appreciate it :D
