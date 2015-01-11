" ========================================
" Vim plugin configuration
" ========================================
" if PluginInstall error, then
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +PluginClean! +PluginInstall +qall
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/vundles/ "Submodules
call vundle#begin()

" let Vundle manage Vundle (required)
Plugin "gmarik/vundle"

" web development
Plugin "pangloss/vim-javascript"
Plugin "othree/javascript-libraries-syntax.vim"
Plugin "digitaltoad/vim-jade.git"
Plugin "groenewege/vim-less.git"
Plugin "itspriddle/vim-jquery.git"
Plugin "jtratner/vim-flavored-markdown.git"
Plugin "kchmck/vim-coffee-script"
Plugin "scrooloose/syntastic.git"
Plugin "garbas/vim-snipmate.git"
Plugin "nelstrom/vim-markdown-preview"
Plugin "skwp/vim-html-escape"
Plugin "mattn/emmet-vim"
Plugin "tpope/vim-haml"
Plugin "honza/vim-snippets"
Plugin "toyamarinyon/vim-swift"
Plugin "vim-ruby/vim-ruby.git"
Plugin "jnwhiteh/vim-golang"

" git
Plugin "gregsexton/gitv"
Plugin "mattn/gist-vim"
Plugin "tpope/vim-fugitive"
Plugin "tpope/vim-git"

" appearance
Plugin "chrisbra/color_highlight.git"
Plugin "skwp/vim-colors-solarized"
Plugin "itchyny/lightline.vim"
Plugin "jby/tmux.vim.git"
Plugin "morhetz/gruvbox"
Plugin "xsunsmile/showmarks.git"

" textobject
Plugin "austintaylor/vim-indentobject"
Plugin "bootleq/vim-textobj-rubysymbol"
Plugin "coderifous/textobj-word-column.vim"
Plugin "kana/vim-textobj-datetime"
Plugin "kana/vim-textobj-entire"
Plugin "kana/vim-textobj-function"
Plugin "kana/vim-textobj-user"
Plugin "lucapette/vim-textobj-underscore"
Plugin "nathanaelkane/vim-indent-guides"
Plugin "nelstrom/vim-textobj-rubyblock"
Plugin "thinca/vim-textobj-function-javascript"
Plugin "vim-scripts/argtextobj.vim"

" search
Plugin "justinmk/vim-sneak"
Plugin "rking/ag.vim"
Plugin "vim-scripts/IndexedSearch"
Plugin "nelstrom/vim-visual-star-search"
Plugin "skwp/greplace.vim"
Plugin "Lokaltog/vim-easymotion"

" project
Plugin "jistr/vim-nerdtree-tabs.git"
Plugin "scrooloose/nerdtree.git"
Plugin "kien/ctrlp.vim"
Plugin "xolox/vim-misc"
Plugin "xolox/vim-session"
Plugin "editorconfig/editorconfig-vim"

" vim-improvements
Plugin "AndrewRadev/splitjoin.vim"
Plugin "Raimondi/delimitMate"
Plugin "Shougo/neocomplete.git"
Plugin "briandoll/change-inside-surroundings.vim.git"
Plugin "godlygeek/tabular"
Plugin "tomtom/tcomment_vim.git"
Plugin "vim-scripts/camelcasemotion.git"
Plugin "vim-scripts/matchit.zip.git"
Plugin "kristijanhusak/vim-multiple-cursors"
Plugin "Keithbsmiley/investigate.vim"
Plugin "chrisbra/NrrwRgn"
Plugin "christoomey/vim-tmux-navigator"
Plugin "MarcWeber/vim-addon-mw-utils.git"
Plugin "mattn/webapi-vim.git"
Plugin "sjl/gundo.vim"
Plugin "skwp/YankRing.vim"
Plugin "tomtom/tlib_vim.git"
Plugin "tpope/vim-abolish"
Plugin "tpope/vim-endwise.git"
Plugin "tpope/vim-ragtag"
Plugin "tpope/vim-repeat.git"
Plugin "tpope/vim-surround.git"
Plugin "tpope/vim-unimpaired"
Plugin "vim-scripts/AnsiEsc.vim.git"
Plugin "vim-scripts/AutoTag.git"
Plugin "vim-scripts/lastpos.vim"
Plugin "vim-scripts/sudo.vim"
Plugin "goldfeld/ctrlr.vim"
Plugin "vim-scripts/Mark--Karkat"
Plugin "mtth/scratch.vim"

let g:vundle_default_git_proto = 'git'
if filereadable(expand("~/.yadr/vim/.vundles.local"))
  source ~/.yadr/vim/.vundles.local
endif

call vundle#end()
filetype plugin indent on

