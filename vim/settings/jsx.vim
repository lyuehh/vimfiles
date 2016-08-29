let g:jsx_ext_required = 0
let g:jsx_pragma_required = 0
let g:syntastic_javascript_checkers = ['eslint']
autocmd BufRead,BufNewFile *.jsx set ft=javascript.jsx syntax=javascript.jsx
