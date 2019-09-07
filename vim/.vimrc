set nocompatible		                   	"We want the latest Vim settings

so ~/.vim/plugins.vim

syntax enable 
set backspace=indent,eol,start 		    	"Make backspace behave like every other editro.
let mapleader = ',' 			        	"the default leader is \, but i rather use ,
set nonumber 					                "deactivate line numbers
set tabstop=4
set shiftwidth=4							"tabsize when you press tab
set expandtab


"-----------------Visuals--------------------"
set t_Co=256				        	"Use 256colors. useful for terminal Vim
colorscheme dracula
"colorscheme atom-dark-256
"set macligatures			        	"We want pretty symbols, when available
set guioptions-=e			        	"We don't want Gui tabs.
set guifont=Inconsolata\ 16		       	"add a \ to escape the space
set linespace=20 			        	"Macvim specific line-height
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m			        	"Remove Menu
set guioptions-=T			        	"Remove Toolbar
"We'll fake a custom left padding for each window.
"hi == highlight
"change line number bg to editor bg
hi LineNr guibg=bg
set foldcolumn=2                        "set width of left side
"change folder bg to editor bg
hi foldcolumn guibg=bg
"get rid of ugly split border(NERDTree & vsplit)
hi vertsplit guifg=bg guibg=bg

set lines=17

"-----------------Search--------------------"
set hlsearch 					"highlight search" 
set incsearch 					"search incrementally"

"-----------------Mapping--------------------"
"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle
nmap <C-B> :NERDTreeToggle<cr>
"nmap <D-1> :NERDTreddToggle for mac vim (D means super)
"nmap <C-D-F> fullscreen

":tag method
nmap <Leader>f :tag<space>

imap jj <ESC>

"set working dir to current dir
nmap <Leader>c :cd %:p:h<cr>

nmap <Leader>n :cd 

"-------------Plugins--------------"
"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'vendor\|node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"nmap <D-p> :CtrlP<cr> for mac vim browse all files
"look for symbols
nmap <C-R> :CtrlPBufTag<cr>
nmap <C-E> :CtrlPMRUFiles<cr>

"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0


"-------------Auto-Commands--------------"
"Automatically source the Vimrc file on save.

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"-------------Notes and Tips--------------"
"exuberant-ctags
":tag method-name which will find you a function named function-name
" - Press 'zz' to instantly center the line where the cursor is located.
