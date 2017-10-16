:scriptencoding utf-8
:set encoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'squil/vim_colors'
Plugin 'vim-ruby/vim-ruby'
Bundle "pangloss/vim-javascript"
Bundle "kchmck/vim-coffee-script"
Bundle "itchyny/lightline.vim"
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'ddollar/nerdcommenter'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'jimenezrick/vimerl'
Bundle 'edkolev/erlang-motions'
Bundle 'Blackrush/vim-gocode'
Bundle 'junegunn/goyo.vim'
Bundle 'bogado/file-line'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'scrooloose/syntastic'
" Bundle 'tpope/vim-surround'
Bundle 'rust-lang/rust.vim'
Bundle 'christoomey/vim-tmux-navigator'

call vundle#end()     

let g:erlang_force_use_vimerl_indent=1
let g:syntastic_erlang_checkers = ['syntaxerl']

" Конфиг для вызова ag
Bundle 'rking/ag.vim'
let g:agprg = 'ag --nogroup --nocolor --column --smart-case'
let g:aghighlight=1 " Подсветить поиск
cabbrev As AgFromSearch " Псевдоним чтобы меньше писать

Bundle 'git://github.com/vim-scripts/vim-auto-save'
let g:auto_save = 1

" 'colorscheme': 'wombat',
:let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" syntax enable
set background=light
colorscheme solarized

:set laststatus=2

" set nowrap
:set linebreak

set hlsearch

set expandtab
set shiftwidth=2
set softtabstop=2
autocmd FileType erlang set softtabstop=4|set shiftwidth=4

filetype plugin on
set omnifunc=syntaxcomplete#Complete

filetype plugin indent on     " required

:let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>

:syntax on

set term=xterm-256color
color smyck
" set background=dark
" color solarized
" syntax enable
" color monokai

set clipboard=unnamed

nmap <leader>lw :CtrlP<CR><C-\>w

set wildignore+=*.beam

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" сворачивание блоков на основе отступов
set foldmethod=indent
set foldlevelstart=20

set autowrite

let g:ackprg = 'ag --nogroup --nocolor --column'

autocmd BufRead,BufNewFile */nginx/*.conf setfiletype conf

"do not create swp files
set noswapfile
set nobackup 

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

