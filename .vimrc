syntax on

set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set encoding=UTF-8

call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/rhysd/vim-clang-format.git'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'https://github.com/vim-syntastic/syntastic.git'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme gruvbox
set background=dark

:imap jk <Esc> 
:let mapleader = ' '
nnoremap <C-n> :NERDTreeToggle<Enter>

" Remap these to shift between windows in NERDTree.
nnoremap <C-l> <C-w><C-w>
nnoremap <C-h> <C-w><C-h>

" Clang format on save.
nmap :w :ClangFormat<Enter>

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

set backspace=indent,eol,start

let g:ycm_global_ycm_extra_conf = '$HOME/.vim/ycm_extra_conf/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0

let g:syntastic_c_include_dirs = ['includes']
let g:syntastic_c_check_header = 1
let g:syntastic_cpp_include_dirs = ['includes']
let g:syntastic_cpp_check_header = 1

" To make YouCompleteMe work for specific languages:

" Navigate to ~/.vim/Plugged/YouCompleteMe/
" run ./install.py --<option>
