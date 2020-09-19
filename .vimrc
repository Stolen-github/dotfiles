" ~/.vimrc
"       _
"__   _(_)_ __ ___  _ __ ___
"\ \ / / | '_ ` _ \| '__/ __|
" \ V /| | | | | | | | | (__
"  \_/ |_|_| |_| |_|_|  \___|


"""""""""""
" Plugins "
"""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" https://github.com/tpope/vim-sensible
Plugin 'tpope/vim-sensible'

" https://github.com/Raimondi/delimitMate
Plugin 'Raimondi/delimitMate'

" https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'

" https://github.com/tpope/vim-surround
Plugin 'tpope/vim-surround'

" https://github.com/junegunn/fzf.vim
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" https://github.com/preservim/nerdcommenter
Plugin 'preservim/nerdcommenter'

" https://github.com/lepture/vim-jinja
Plugin 'lepture/vim-jinja'

" https://github.com/gruvbox-community/gruvbox
Plugin 'gruvbox-community/gruvbox'

" https://github.com/shinchu/lightline-gruvbox.vim
Plugin 'shinchu/lightline-gruvbox.vim'

call vundle#end()
filetype plugin indent on

runtime! plugin/sensible.vim

"""""""""""""""
" Indentation "
"""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
autocmd Filetype make setlocal noexpandtab

""""""""""
" Search "
""""""""""
set ignorecase
set smartcase
set nohlsearch

""""""""
" File "
""""""""
set encoding=utf-8
set autowrite
set autoread
set nobackup
set noswapfile
set hidden
autocmd Filetype twig set ft=jinja

"""""""""""""
" Interface "
"""""""""""""
set number relativenumber
set cc=80
set mouse=a
set ttymouse=sgr
set noshowmode
set showcmd
set cursorline
set scrolloff=10
set list
set listchars=trail:¤
set splitbelow splitright

""""""""""
" Colors "
""""""""""
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
let g:lightline = {'colorscheme': 'gruvbox'}

" Mappings "
""""""""""""
let mapleader = " "
nnoremap Y y$
nnoremap j gj
nnoremap k gk
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <C-p> :w<CR> \| :Files<CR>
nnoremap <leader><leader> :e #<CR>
