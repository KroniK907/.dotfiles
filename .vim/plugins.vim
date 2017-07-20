filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Vundle
Plugin 'VundleVim/Vundle.vim'

"File Management
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'danro/rename.vim'

"Asthetics
Plugin 'vim-airline/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'

"Syntax Highlighting
Plugin 'pangloss/vim-javascript'
Plugin 'stanangeloff/php.vim'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'wavded/vim-stylus'

"Git Related
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

"Linting
Plugin 'scrooloose/syntastic'

"Code Formatting Tools
Plugin 'tobys/vmustache'
Plugin 'townk/vim-autoclose'
Plugin 'godlygeek/tabular'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'tpope/vim-surround'
Plugin 'lfilho/cosco.vim'
Plugin 'editorconfig/editorconfig-vim'

"Code Snippet Tools
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'arnaud-lb/vim-php-namespace'

"Code Navigation
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rking/ag.vim'
Plugin 'skwp/greplace.vim'

"Plugin Utilities
Plugin 'tpope/vim-repeat'
Plugin 'ervandew/supertab'

"Autocomplete
"Plugin 'valloric/youcompleteme'



call vundle#end()            " required
filetype plugin indent on    " required
