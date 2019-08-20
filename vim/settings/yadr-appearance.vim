" Make it beautiful - colors and fonts

" http://ethanschoonover.com/solarized/vim-colors-solarized
"

if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256

  " Show tab number (useful for Cmd-1, Cmd-2.. mapping)
  " For some reason this doesn't work as a regular set command,
  " (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M
  set transparency=15
  set lines=60
  set columns=190

  set guifont=Monaco:h15
else
  let g:CSApprox_loaded = 1

  " For people using a terminal that is not Solarized
  if exists("g:yadr_using_unsolarized_terminal")
    let g:solarized_termcolors=256
    let g:solarized_termtrans=1
  end
endif

let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
" colorscheme solarized
" colorscheme base16-google
color dracula
set background=dark
