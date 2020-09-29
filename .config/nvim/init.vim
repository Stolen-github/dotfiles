"            _
" _ ____   _(_)_ __ ___  _ __ ___
"| '_ \ \ / / | '_ ` _ \| '__/ __|
"| | | \ V /| | | | | | | | | (__
"|_| |_|\_/ |_|_| |_| |_|_|  \___|


"""""""""""
" Plugs "
"""""""""""
call plug#begin()

" https://github.com/Raimondi/delimitMate
"Plug 'Raimondi/delimitMate'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" https://github.com/preservim/nerdcommenter
Plug 'preservim/nerdcommenter'

" https://github.com/lepture/vim-jinja
Plug 'lepture/vim-jinja'

" https://github.com/gruvbox-community/gruvbox
Plug 'gruvbox-community/gruvbox'

" https://github.com/shinchu/lightline-gruvbox.vim
Plug 'shinchu/lightline-gruvbox.vim'

" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


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
set listchars=tab:»·,trail:¤
set splitbelow splitright


""""""""""""""
" Status Bar "
""""""""""""""
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \}


""""""""""
" Colors "
""""""""""
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox


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


"""""""""""""""""
" Miscellaneous "
"""""""""""""""""
set clipboard+=unnamedplus
set updatetime=300


""""""""""""""""""""""""""
" Exteral Plugin Configs "
""""""""""""""""""""""""""
source ~/.config/nvim/PlugSettings/coc.vim
