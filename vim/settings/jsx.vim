let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['jshint']

" let g:tern#command=['/usr/local/bin/node', '/Users/ben/Code/projects/tern-es6/bin/tern']
let g:tern#command = ["/Users/weiwei/.nvm/versions/node/v0.12.7/bin/node", expand('<sfile>:h') . '/../node_modules/tern/bin/tern', '--no-port-file']
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
