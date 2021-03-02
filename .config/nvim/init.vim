"            _
" _ ____   _(_)_ __ ___  _ __ ___
"| '_ \ \ / / | '_ ` _ \| '__/ __|
"| | | \ V /| | | | | | | | | (__
"|_| |_|\_/ |_|_| |_| |_|_|  \___|

"""""""""
" Plugs "
"""""""""
call plug#begin()

" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" https://github.com/preservim/nerdcommenter
Plug 'preservim/nerdcommenter'

" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" https://github.com/rhysd/vim-clang-format
Plug 'rhysd/vim-clang-format'

" https://github.com/liuchengxu/vim-which-key
Plug 'liuchengxu/vim-which-key'

" https://github.com/ayu-theme/ayu-vim
Plug 'ayu-theme/ayu-vim'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" https://github.com/RRethy/vim-hexokinase
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

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
autocmd BufEnter *.ll set filetype=lex


"""""""""""""
" Interface "
"""""""""""""
set number
set colorcolumn=80
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
            \ 'colorscheme': 'ayu_mirage',
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
let ayucolor="mirage"
colorscheme ayu


""""""""""""
" Mappings "
""""""""""""
let mapleader = "\<Space>"
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap <leader><leader> :e #<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
autocmd FileType markdown nnoremap <buffer> <leader>mp :silent !pandoc % -o %:r.pdf<CR>
autocmd FileType markdown nnoremap <buffer> <leader>mv :silent !zathura %:r.pdf &<CR>


"""""""""""""""""
" Miscellaneous "
"""""""""""""""""
set mouse=a
set clipboard+=unnamedplus
set updatetime=300


""""""""""""""""""""""""""
" Exteral Plugin Configs "
""""""""""""""""""""""""""
source ~/.config/nvim/PlugSettings/coc.vim
source ~/.config/nvim/PlugSettings/nerdcommenter.vim
source ~/.config/nvim/PlugSettings/fzf.vim
source ~/.config/nvim/PlugSettings/clang-format.vim
source ~/.config/nvim/PlugSettings/which-key.vim
source ~/.config/nvim/PlugSettings/hexokinase.vim
source ~/.config/nvim/PlugSettings/polyglot.vim
