let g:vimwiki_list = [{'path': '~/Documents/vimwiki',
            \'path_html': '~/Documents/vimwiki/wiki_html',
            \'template_path': '~/Documents/vimwiki/templates',
            \'template_default': 'def_template',
            \'template_ext': '.html'}]

let g:vimwiki_folding='custom'
autocmd FileType vimwiki setlocal foldmethod=marker

let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr, pre, script'
