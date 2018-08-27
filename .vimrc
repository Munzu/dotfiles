" Make vim non-vi-compatible because that is useless
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Call our plugin manager
call vundle#begin()

" Plug 'tpope/vim-surround'               " Easy surrounding things with brackets etc.
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'               " In-vim git stuff
Plugin 'tpope/vim-commentary'             " Easy comment-out stuff
" Plugin 'joshdick/onedark.vim'             " Nice color scheme
" Plugin 'dracula/vim'                      " Till's color scheme
Plugin 'chriskempson/base16-vim'          " color scheme
Plugin 'kien/ctrlp.vim'                   " Fuzzy file finder
Plugin 'scrooloose/nerdtree'              " Better file tree
Plugin 'SirVer/ultisnips'                 " Snippets engine
Plugin 'vim-latex/vim-latex'              " Auto complete and view
" Plug 'honza/vim-snippets'               " Some default snippets
" Plug 'vim-syntastic/syntastic'          " Syntax checker, requires checker itself to be installed (e.g. flake8 for python)
Plugin 'w0rp/ale'                         " Syntastic alternative
Plugin 'vim-airline/vim-airline'          " Nice status and tab bar
Plugin 'vim-airline/vim-airline-themes'   " Make it theme compatible

Plugin 'plasticboy/vim-markdown'          " Better markdown support
" Plug 'PProvost/vim-ps1'                 " PowerShell support
Plugin 'jiangmiao/auto-pairs'             " Auto-close brackets and quotes
Plugin 'josephcc/vim-lfg-highlight'
Plugin 'airblade/vim-gitgutter'           " Show git changes

call vundle#end()

" file type specific indents
filetype plugin indent on

" Always use utf-8
set encoding=utf-8

" Display line numbers relative to current line, makes moving easier
set relativenumber

" Display real line number on current line
set number

" Highlight found stuff while still searching
set incsearch

" Spaces > tabs
set expandtab

" 4 spaces = 1 tab
set shiftwidth=4
set softtabstop=4

" Display current position in bottom right
set ruler

" Autoindent based on previous line
set autoindent

" Autoindent based on filetype
filetype plugin indent on

" Make backspace behave as expected
set backspace=indent,eol,start

" Syntax highlighting
syntax on

" Stop vim from waiting for another cmd when pressing esc
set timeout timeoutlen=3000 ttimeoutlen=100

" Disable warning bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Auto-linebreak after 80 characters
set textwidth=80

" Line at 80
set colorcolumn=80

" Always keep 2 lines after cursor
set scrolloff=2

" Use LF as line ending character
set fileformat=unix
set fileformats=unix,dos

" Disable swap files
set noswapfile

" Allow switching between buffers without having to save
set hidden



" Disable arrow keys in normal mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Disable arrow keys in insert mode
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

colorscheme base16-snazzy
set termguicolors

" Configure Plugins
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='onedark'

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=['~/.vim/UltiSnips','UltiSnips']
if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:vim_markdown_folding_disabled = 1

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" let g:Tex_FormatDependency_dvi = 'dvi,ps,pdf'
" let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_DefaultTargetFormat='pdf'


autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
