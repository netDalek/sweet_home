call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-rails'
Plug 'squil/vim_colors'
Plug 'itchyny/lightline.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'Blackrush/vim-gocode'
Plug 'junegunn/goyo.vim'
Plug 'bogado/file-line'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/syntastic'
Plug 'jimenezrick/vimerl'
Plug 'edkolev/erlang-motions'
Plug 'ervandew/supertab'
Plug 'rking/ag.vim'
Plug 'git://github.com/vim-scripts/vim-auto-save'

Plug 'christoomey/vim-tmux-navigator'

" Add plugins to &runtimepath
call plug#end()

set clipboard+=unnamedplus
set ttimeoutlen=0

let g:erlang_force_use_vimerl_indent=1
let g:syntastic_erlang_checkers = ['syntaxerl']

let g:ag_prg = 'ag --nogroup --nocolor --column --smart-case'
let g:ag_highlight=1 " Подсветить поиск
cabbrev As AgFromSearch " Псевдоним чтобы меньше писать

let g:auto_save = 1


" 'colorscheme': 'wombat',
" :let g:lightline = {
"       \ 'colorscheme': 'solarized',
"       \ }

syntax enable
set background=dark
colorscheme solarized

set expandtab
set shiftwidth=2
set softtabstop=2
autocmd FileType erlang set softtabstop=4|set shiftwidth=4

:let mapleader = ","

map <Leader>n :NERDTreeToggle<CR>

:syntax on

" сворачивание блоков на основе отступов
set foldmethod=indent
set foldlevelstart=20

"do not create swp files
set noswapfile
set nobackup 

tnoremap <Esc> <C-\><C-n>

" Комманды в режиме кириллицы
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
