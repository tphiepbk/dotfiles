set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set number
set relativenumber
set cursorline
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set splitbelow
set splitright
set ignorecase
set smartcase
set nohlsearch
set laststatus=2
set nobackup
set backupcopy=yes
syntax on
nnoremap sv :vsplit<CR>
nnoremap ss :split<CR>
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
let mapleader=" "
nnoremap <Tab> :bn<cr>
nnoremap <Leader-Tab> :bp<cr>
nnoremap <Leader>bd :bd<cr>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>wq :wq<CR>
let loaded_matchparen = 1
set list
set listchars=trail:Â·,lead:Â·,tab:>-
colorscheme default
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE
highlight SpecialKey ctermfg=gray ctermbg=NONE guifg=red guibg=NONE
highlight EndOfBuffer ctermfg=gray ctermbg=NONE guifg=gray40 guibg=NONE
highlight CursorLineNr ctermfg=cyan ctermbg=NONE guifg=cyan guibg=NONE
highlight LineNr ctermfg=blue ctermbg=NONE guifg=blue guibg=NONE
autocmd BufNewFile,BufRead Dockerfile_* set filetype=dockerfile