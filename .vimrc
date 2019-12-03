set nocompatible              " required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'tmhedberg/SimpylFold'
Plug 'ntpeters/vim-better-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'davidhalter/jedi-vim'
Plug 'vim-python/python-syntax'
Plug 'vimwiki/vimwiki'
Plug 'pangloss/vim-javascript'
Plug 'dense-analysis/ale'
call plug#end()

filetype plugin indent on

set bs=2

" Theme settings
syntax enable
colorscheme gruvbox
set background=dark
if (has("termguicolors"))
 set termguicolors
endif

"Shows indent lines for python
set listchars=tab:\|\
set list
" Sets UTF-8 support
set encoding=utf-8

" Enables line numbering
set nu

" Enable folding with the spacebar
nnoremap <space> za

" Maps jk to escape insert mode
imap jk <Esc>

" Mappings for split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Natural split openings
set splitbelow
set splitright

" Configure SimpylFold to show docstrings
let g:SimpylFold_docstring_preview = 1

"Configure Better-Whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

"" Syntax highlighting
let g:python_highlight_all = 1
let g:python_version_2 = 0

" Configure Jedi-vim
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_select_first = 0

"Sets proper PEP8 indentation for python files
au BufNewFile,BufRead *.py
    \ set expandtab|
    \ set textwidth=79|
    \ set tabstop=4|
    \ set softtabstop=4|
    \ set autoindent

"" Sets proper indentation for css, html, js files
" au BufNewFile,BufRead *.js
 "   \ set expandtab|
 "   \ set tabstop=4|
 "   \ set softtabstop=2|
 "   \ set shiftwidth=2|
 "   \ set autoindent

" Enables vim access to system clipboard
set clipboard=unnamed

" Keeps cursor in the middle of the screen when scrolling
set so=999
