" {{ Plugins }}
call plug#begin()
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug '907th/vim-auto-save'
call plug#end()

if has('gui_running')
    set guifont=CaskaydiaCove\ NFM\ SemiLight:h11
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=L
endif

winpos 50 50
set lines=50
set columns=200
set backspace=2
set noswapfile
set belloff=all

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
set hlsearch

syntax on

nnoremap <silent> sv :vsplit<CR>
nnoremap <silent> ss :split<CR>
nnoremap <silent> sh <C-w>h
nnoremap <silent> sj <C-w>j
nnoremap <silent> sk <C-w>k
nnoremap <silent> sl <C-w>l
nnoremap <silent> <esc> :noh<cr><esc>

let mapleader=","

nnoremap <silent> <Tab> :bn<cr>
nnoremap <silent> <Leader-Tab> :bp<cr>
nnoremap <silent> <Leader>bd :bd<cr>
nnoremap <silent> <Leader>bb :buffers<cr>

nnoremap <silent> <Leader>qq :q!<CR>
nnoremap <silent> <Leader>qa :qa!<CR>

nnoremap <silent> <Leader>vr :source ~/.vimrc<CR>
nnoremap <silent> <Leader>vm :vsplit ~/.vimrc<CR>

" {{ Dracula }}
let g:dracula_italic=0
set background=dark
set t_Co=256
colorscheme dracula

" {{ Airline settings }}
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" {{ Indent Line }}
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" {{ Autosave  }}
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_events = ["InsertLeave", "TextChanged"]

" {{ Bracket Rainbow }}
let g:rainbow_active = 1

" {{ Nerd Commenter settings }}
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" {{ Fuzzy Finder (fzf) }}
nnoremap <silent> <Leader>ff :Files<CR>
nnoremap <silent> <Leader>fh :History<CR>
let g:fzf_preview_window = ['right:70%', 'ctrl-/']

