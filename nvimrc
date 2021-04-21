call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree'

Plug 'kien/ctrlp.vim'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'itchyny/lightline.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'neoclide/vim-easygit'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'bogado/file-line'
Plug 'rking/ag.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-syntastic/syntastic'

Plug 'kylef/apiblueprint.vim'

filetype plugin on
set omnifunc=syntaxcomplete#Complete
Plug 'vim-erlang/vim-erlang-omnicomplete'

Plug 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"

"Langs
Plug 'mhinz/vim-mix-format'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'Blackrush/vim-gocode'
Plug 'wting/rust.vim'
Plug 'udalov/kotlin-vim'

"Syntax
Plug 'https://github.com/slim-template/vim-slim.git'

"Elixir
Plug 'elixir-editors/vim-elixir'
" Plug 'dm1try/ilexir'
Plug 'slashmili/alchemist.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" Add plugins to &runtimepath
call plug#end()

set clipboard+=unnamedplus
set clipboard+=unnamed
set ttimeoutlen=0

let g:erlang_force_use_vimerl_indent=1
let g:syntastic_erlang_checkers = ['syntaxerl']

let g:ag_prg = 'ag --nogroup --nocolor --column --smart-case'
let g:ag_highlight=1 " Подсветить поиск
cabbrev As AgFromSearch " Псевдоним чтобы меньше писать

let g:auto_save = 1

syntax enable
set background=dark
" colorscheme smyck

set expandtab
set shiftwidth=2
set softtabstop=2
autocmd FileType erlang set softtabstop=4|set shiftwidth=4

:let mapleader = ","

map <Leader>n :NERDTreeFind<CR>
map <Leader>m :NERDTreeToggle<CR>

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
