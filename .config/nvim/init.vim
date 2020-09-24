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

" https://github.com/neoclide/coc.nvim
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

call vundle#end()
filetype plugin indent on

runtime! plugin/sensible.vim

"""""""""""""""
" Indentation "
"""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
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
set autowrite
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
set noshowmode
set cursorline
set scrolloff=10
set list
set listchars=trail:¤
set splitbelow splitright

""""""""""
" Colors "
""""""""""
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
let g:lightline = {'colorscheme': 'gruvbox'}

""""""""""""
" Mappings "
""""""""""""
let mapleader = " "
nnoremap Y y$
nnoremap j gj
nnoremap k gk
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <C-p> :Files<CR>
nnoremap <leader><leader> :e #<CR>

""""""""""""""""""""""""
" Use System Clipboard "
""""""""""""""""""""""""
set clipboard+=unnamedplus
set updatetime=300

source ~/.config/nvim/PlugSettings/coc.vim
