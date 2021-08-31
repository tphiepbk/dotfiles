" Enable Mouse
set mouse=a

if exists('g:GtkGuiLoaded')
    call rpcnotify(1, 'Gui', 'Font', 'Fira Code Medium 9')
endif

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 1
endif

" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv

call plug#begin('~/.vim/plugged')

"{{ Theme }}
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'joshdick/onedark.vim'

"{{ File browser }}
    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" {{ File search}}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

" {{ Status bar }}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

" {{ Terminal }}
    Plug 'voldikss/vim-floaterm'

" {{ Auto completion}}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

" {{ Code Highlight }}
    Plug 'jackguo380/vim-lsp-cxx-highlight'

    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
call plug#end()

set relativenumber

syntax on
colorscheme dracula

set termguicolors

if has("gui_running")
    set guifont=Consolas:h11:cANSI
endif

set clipboard^=unnamed,unnamedplus

set tabstop=4
set shiftwidth=4
set expandtab

" {{ VIM AIRLINE }}
let g:airline_theme='dracula'
let g:airline_powerline_fonts=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers= 1

let g:airline#extensions#whitespace#enabled = 0

" {{ FLOAT TERM }}
let g:floaterm_position = 'topright'
let g:floaterm_height = 0.6
let g:floaterm_weight = 0.6

nnoremap   <silent>   <F7>    :FloatermToggle<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F10>   :FloatermNew<CR>
tnoremap   <silent>   <F10>   <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F12>   :FloatermKill<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermKill<CR>

" {{ Outside settings }}
let nvim_settings_dir = '~/.config/nvim/settings/'
execute 'source'.nvim_settings_dir.'nerdtree.vim'
execute 'source'.nvim_settings_dir.'fzf.vim'
execute 'source'.nvim_settings_dir.'coc.vim'

