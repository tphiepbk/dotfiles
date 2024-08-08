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
├── lazyvim.json</br>
├── README.md</br>
├── .neoconf.json</br>
├── lua</br>
│   ├── plugins</br>
│   │   ├── telescope.lua</br>
│   │   ├── dashboard.lua</br>
│   │   ├── bufferline.lua</br>
│   │   ├── indentscope.lua</br>
│   │   ├── noice.lua</br>
│   │   ├── breadcrumb.lua</br>
│   │   ├── highlight_patterns.lua</br>
│   │   ├── neotree.lua</br>
│   │   ├── tokyonight.lua</br>
│   │   ├── treesitter.lua</br>
│   │   ├── _disabled_plugins.lua</br>
│   │   ├── lualine.lua</br>
│   │   ├── lsp_config.lua</br>
│   │   ├── incline.lua</br>
│   │   ├── winresize.lua</br>
│   │   ├── autosave.lua</br>
│   │   ├── git.lua</br>
│   │   ├── notify.lua</br>
│   │   └── mason.lua</br>
│   └── config</br>
│       ├── options.lua</br>
│       ├── keymaps.lua</br>
│       ├── autocmds.lua</br>
│       └── lazy.lua</br>
├── init.lua</br>
├── lazy-lock.json</br>
├── LICENSE</br>
├── stylua.toml</br>
└── .luarc.json</br>

## Keymaps

Leader key: `<Space>`

| Key 1     | Key 2   | Key 3 | Action                    |
|:---------:|:-------:|:----:|:--------------------------:|
| `<Space>`   | `<Space>` |      | Telescope find files       |
| `<Space>`   | `f`       |  `f`   | Telescope find files       |
| `<Space>`   | `f`       |  `g`   | Telescope live grep        |
| `<Space>`   | `f`       |  `b`   | Telescope find buffers     |
| `Tab`       |         |      | Next tab                   |
| `Shift`     | `Tab`     |      | Previous tab               |
| `s`         | `s`       |      | Split windows horizontally |
| `s`         | `v`       |      | Split windows vertically   |
| `<Space>`   | `e`       |      | Toggle NeoTree             |
| `<Space>`   | `q`       | `q`    | Quit                       |
| `<Space>`   | `q`       | `a`    | Quit all                   |
| `<Space>`   | `w`       | `q`    | Save and quit              |

## Screenshots

Visit http://patorjk.com/software/taag to get cool string like this.

![image_1](images/image1.png)

![image_2](images/image2.png)

![image_3](images/image3.png)

![image_4](images/image4.png)

## Inspired by: https://github.com/craftzdog/dotfiles-public
## Many thanks to all developers, appreciate it :D
