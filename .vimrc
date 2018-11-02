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
Plugin 'chriskempson/base16-vim'          " color scheme
Plugin 'kien/ctrlp.vim'                   " Fuzzy file finder
Plugin 'scrooloose/nerdtree'              " Better file tree
Plugin 'SirVer/ultisnips'                 " Snippets engine
" Plugin 'vim-latex/vim-latex'              " Auto complete and view
Plugin 'lervag/vimtex'                    " LaTeX
" Plug 'honza/vim-snippets'               " Some default snippets
" Plug 'vim-syntastic/syntastic'          " Syntax checker, requires checker itself to be installed (e.g. flake8 for python)
Plugin 'w0rp/ale'                         " Syntastic alternative
Plugin 'vim-airline/vim-airline'          " Nice status and tab bar
Plugin 'vim-airline/vim-airline-themes'   " Make it theme compatible
" Plugin 'itchyny/lightline.vim'            " Statusline
" Plugin 'tbung/vim-lightline-base16'

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

" let g:lightline = {
"       \ 'colorscheme': 'base16_snazzy',
"       \ }
" let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}
" let g:lightline#bufferline#show_number=2
" let g:lightline#bufferline#number_map = {
" \ 0: '⁰', 1: '¹', 2: '²', 3: '³', 4: '⁴',
" \ 5: '⁵', 6: '⁶', 7: '⁷', 8: '⁸', 9: '⁹'}

" let g:bufferline_echo = 0
" let g:bufferline_modified = '+'
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'
" let g:Tex_MultipleCompileFormats='pdf,bib,dvi'
" let g:tex_flavor='latex'
" let g:Tex_BibtexFlavor = 'biber'

" let g:vimtex_disable_version_warning=1
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_fold_enabled=1

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
