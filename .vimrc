set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'Valloric/YouCompleteMe'
colorscheme srcery 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"let &colorcolumn=join(range(80,999),",")
let &colorcolumn=80

" NERDTree
silent! map <F4> :NERDTreeFind<CR>
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeMapActivateNode="<F4>"
let g:NERDTreeMapPreview="<F5>"

" Indentation
au BufNewFile,BufRead *.js,*.html,*.css,*.txt,*.rb; set expandtab
au BufNewFile,BufRead *.js,*.html,*.css,*.txt,*.rb; set shiftwidth=2
au BufNewFile,BufRead *.js,*.html,*.css,*.txt,*.rb; set softtabstop=2

" Python Indentation
au BufNewFile,BufRead *.py; set tabstop=4
au BufNewFile,BufRead *.py; set softtabstop=4
au BufNewFile,BufRead *.py; set shiftwidth=4
au BufNewFile,BufRead *.py; set textwidth=79
au BufNewFile,BufRead *.py; set expandtab
au BufNewFile,BufRead *.py; set autoindent
au BufNewFile,BufRead *.py; set fileformat=unix
"au BufNewFile,BufRead *.py; set colorcolumn=-1
"au BufNewFile,BufRead *.py; highlight ColorColumn ctermbg=red guibg=orange

" Syntax highlighting
let python_highlight_all=1
syntax on

" Flag unnecessary whitespace
au BufRead,BufNewfile *.py,*.pyw,*.c,*.h; match BadWhitespace /\s\+$/
highlight BadWhiteSpace ctermbg=red
highlight ColorColumn ctermbg=235

" UTF8 Support
set encoding=utf-8


" Navigating between windows/panes
set splitbelow
set splitright
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Line Numbers
set number

" Toggle auto indent
set pastetoggle=<F2>

" Comments
nmap <C-_> <plug>NERDCommenterToggle
vmap <C-_> <plug>NERDCommenterToggle

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
