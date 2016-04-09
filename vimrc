set nocompatible

" ========================================
" Vim plugin configuration
" ========================================
" if PluginInstall error, then
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +PluginClean! +PluginInstall +qall
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/vundles/ "Submodules
call vundle#begin()
let g:vundle_default_git_proto = 'git'

" let Vundle manage Vundle (required)
Plugin 'gmarik/Vundle.vim'

" web development
Plugin 'jtratner/vim-flavored-markdown.git'
Plugin 'scrooloose/syntastic.git'
"Plugin 'garbas/vim-snipmate.git'
Plugin 'SirVer/ultisnips'
Plugin 'nelstrom/vim-markdown-preview'
Plugin 'skwp/vim-html-escape'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'sheerun/vim-polyglot'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'itspriddle/vim-jquery.git'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'justinj/vim-react-snippets'
Plugin 'lambdatoast/elm.vim'
"Plugin 'neovimhaskell/haskell-vim'
"Plugin 'marijnh/tern_for_vim'

" git
Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'

" appearance
Plugin 'chrisbra/color_highlight.git'
Plugin 'skwp/vim-colors-solarized'
"Plugin 'chriskempson/base16-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jby/tmux.vim.git'
Plugin 'morhetz/gruvbox'
Plugin 'xsunsmile/showmarks.git'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

" textobject
Plugin 'austintaylor/vim-indentobject'
Plugin 'bootleq/vim-textobj-rubysymbol'
Plugin 'coderifous/textobj-word-column.vim'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-user'
Plugin 'lucapette/vim-textobj-underscore'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'thinca/vim-textobj-function-javascript'
Plugin 'vim-scripts/argtextobj.vim'

" search
Plugin 'justinmk/vim-sneak'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'skwp/greplace.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rizzatti/dash.vim'

" project
Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'editorconfig-vim'

" vim-improvements
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Raimondi/delimitMate'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/neocomplete.git'
Plugin 'briandoll/change-inside-surroundings.vim.git'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'vim-scripts/camelcasemotion.git'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'Keithbsmiley/investigate.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'mattn/webapi-vim.git'
Plugin 'sjl/gundo.vim'
Plugin 'skwp/YankRing.vim'
Plugin 'tomtom/tlib_vim.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/AnsiEsc.vim.git'
Plugin 'vim-scripts/AutoTag.git'
Plugin 'vim-scripts/lastpos.vim'
Plugin 'vim-scripts/sudo.vim'
Plugin 'goldfeld/ctrlr.vim'
"Plugin 'Mark--Karkat'
Plugin 'scratch.vim'
Plugin 'vim-cursorword'

if filereadable(expand("~/.vim/.vundles.local"))
  source ~/.vim/.vundles.local
endif

call vundle#end()
filetype plugin indent on

if filereadable(expand("~/vim/.vimrc.before"))
  source ~/vim/.vimrc.before
endif

" ================ General Config ====================

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all 
" the plugins.
let mapleader=","

" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
"set noexpandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"
" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" ================ Custom Settings ========================
so ~/.vim/setting.vim
