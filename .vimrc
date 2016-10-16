
"-------------Header--------------"
set nocompatible              			" be iMproved, required
syntax enable
so ~/.vim/plugins.vim





"-------------General Settings--------------"
set backspace=indent,eol,start			"Make backspace behave like every other editor.
let mapleader = ';' 				"The default leader is \, but a comma is much better.
set splitbelow
set splitright





"-------------Visual Customizations--------------"
colorscheme jellybeans
set t_CO=256					"Force 256 Colors
set number					"Activate line numbers.

"Set split border colors
hi vertsplit ctermbg=bg ctermfg=fg 

"Always show status line
:set laststatus=2




"-------------Search--------------"
set hlsearch
set incsearch





"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Make it easy to edit the .bash_profile file
nmap <Leader>eb :tabedit ~/.bash_profile<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"remap the insert mode key
nmap i <Insert>

"make Ctrl+s save in all situations.
nmap <C-s> :w<cr>
vmap <C-s> <C-C>:w<cr>
imap <C-s> <C-O>:w<cr>

"shortcut for buffer previous
nmap <Leader>b <C-^>






"-------------Screen Management--------------"
"Map Cursor Movement
nmap h <Left>
nmap j <Down>
nmap k <Up>
nmap l <Right>
vmap h <Left>
vmap j <Down>
vmap k <Up>
vmap l <Right>


"remap screen split navigation
nmap <C-J> <C-W><C-J>
nmap <C-L> <C-W><C-L>
nmap <C-K> <C-W><C-K>
nmap <C-h> <C-W><C-H>





"-------------Plugins--------------"

"/
"/ Nerd Tree
"/

"Quick Toggle Nerd Tree
nmap <Leader>t :NERDTreeToggle<cr>

"Search within file
nmap <C-R> :CtrlPBufTag<cr>

"Set the folder icon
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'V'

"Stop Nerdtree from Hijacking Vinegar
let g:NERDTreeHijackNetrw = 0

"/
"/ CtrlP
"/

"Allow ;ee to open CtrlP
nmap <Leader>ee <C-p>

"Set up the CtrlP window to be on top and sort top to bottom
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/
"/ Ctags
"/

"Ctags shortcut
nmap <Leader>f :tag<space>

"Ctags Quick Find selected function
nmap <leader>g :tf<cr>

"/
"/ Airline
"/

let g:airline_inactive_collapse=0
let g:airline#extensions#tabline#enabled = 1





"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

