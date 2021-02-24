" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→ '

" Trigger which key faster
set timeoutlen=300

" No floating window
let g:which_key_use_floating_win = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Coc
let g:which_key_map.l = {
            \ 'name' : 'coc (lsp)',
            \ 'n' : "rename",
            \ 's' : "restart",
            \ 'd' : "definition",
            \ 'y' : "type-definition",
            \ 'i' : "implementation",
            \ 'r' : "references",
            \ 'j' : "next diagnostic",
            \ 'k' : "previous diagnostic",
            \ 'a' : "action",
            \}

" FZF
let g:which_key_map.f = {
            \ 'name' : 'fzf',
            \ 'c' : "from current file",
            \ 'f' : "files",
            \ 'g' : "git files",
            \ 'r' : "ripGrep",
            \ 'b' : "buffers",
            \}

" Markdown
autocmd FileType markdown let g:which_key_map.m = {
            \'name' : 'markdown',
            \ 'p' : "to pdf",
            \ 'v' : "visualize",
            \}

" NERDCommenter
let g:which_key_map.c = {
            \'name' : 'NERDCommenter',
            \ 'c' : "comment",
            \ 'i' : "invert",
            \ 'u' : "uncomment",
            \ 's' : "sexy",
            \ 'n' : "nested",
            \ '$' : "to end of line",
            \ 'm' : "minimal",
            \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
