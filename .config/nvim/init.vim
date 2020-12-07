"            _
" _ ____   _(_)_ __ ___  _ __ ___
"| '_ \ \ / / | '_ ` _ \| '__/ __|
"| | | \ V /| | | | | | | | | (__
"|_| |_|\_/ |_|_| |_| |_|_|  \___|

"""""""""
" Plugs "
"""""""""
call plug#begin()

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

" https://github.com/joshdick/onedark.vim
Plug 'joshdick/onedark.vim'

" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" https://github.com/rhysd/vim-clang-format
Plug 'rhysd/vim-clang-format'

" https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'

Plug 'sheerun/vim-polyglot'

" https://github.com/PotatoesMaster/i3-vim-syntax
Plug 'PotatoesMaster/i3-vim-syntax'

call plug#end()


"""""""""""""""
" Indentation "
"""""""""""""""
set tabstop=8
set shiftwidth=4
set expandtab
autocmd Filetype make setlocal noexpandtab shiftwidth=8


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
set signcolumn=yes


""""""""""""""
" Status Bar "
""""""""""""""
let g:lightline = {
            \ 'colorscheme': 'onedark',
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
set termguicolors
let g:onedark_terminal_italics = 1
colorscheme onedark


""""""""""""
" Mappings "
""""""""""""
let mapleader = " "
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap <leader><leader> :e #<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


"""""""""""""
" Functions "
"""""""""""""
function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . gatename
  execute "normal! 2o#define " . gatename
  execute "normal! Go#endif /* !" . gatename . " */"
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()


"""""""""""""""""
" Miscellaneous "
"""""""""""""""""
set clipboard+=unnamedplus
set updatetime=300


""""""""""""""""""""""""""
" Exteral Plugin Configs "
""""""""""""""""""""""""""
source ~/.config/nvim/PlugSettings/coc.vim
source ~/.config/nvim/PlugSettings/nerdcommenter.vim
source ~/.config/nvim/PlugSettings/fzf.vim
source ~/.config/nvim/PlugSettings/clang-format.vim
source ~/.config/nvim/PlugSettings/vimwiki.vim
