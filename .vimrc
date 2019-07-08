" Make vim non-vi-compatible because that is useless
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Call our plugin manager
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'               " In-vim git stuff
Plugin 'tpope/vim-commentary'             " Easy comment-out stuff
" Plugin 'chriskempson/base16-vim'          " color scheme
Plugin 'danielwe/base16-vim'              " color scheme
Plugin 'ctrlpvim/ctrlp.vim'               " Fuzzy file finder
Plugin 'scrooloose/nerdtree'              " Better file tree
Plugin 'SirVer/ultisnips'                 " Snippets engine
Plugin 'lervag/vimtex'                    " LaTeX
Plugin 'w0rp/ale'                         " Syntastic alternative, syntax checker
Plugin 'vim-airline/vim-airline'          " Nice status and tab bar
Plugin 'vim-airline/vim-airline-themes'   " Make it theme compatible
Plugin 'plasticboy/vim-markdown'          " Better markdown support
Plugin 'jiangmiao/auto-pairs'             " Auto-close brackets and quotes
Plugin 'airblade/vim-gitgutter'           " Show git changes
" Plugin 'josephcc/vim-lfg-highlight'
" Plugin 'pyarmak/vim-pandoc-live-preview'
" Plugin 'vim-pandoc/vim-pandoc'
Plugin 'tpope/vim-surround'               " Surrounding quotes and brackets etc
Plugin 'tpope/vim-repeat'                 " make ysiw from surround work with `.`
Plugin 'justinmk/vim-sneak'               " better f usage

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

" Always display status line
set laststatus=2 

" Colors
colorscheme base16-snazzy
set termguicolors

" copy and paste from clipboard
set clipboard=unnamedplus

" Allow mouse support
set mouse=a

" New tabs to the right
set splitright

" Allow mouse scrolling without mouse clicks
nmap <LeftMouse> <nop>
imap <LeftMouse> <nop>
vmap <LeftMouse> <nop>

" Disable arrow keys in normal mode
" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>

" Disable arrow keys in insert mode
" inoremap <Up> <NOP>
" inoremap <Down> <NOP>
" inoremap <Left> <NOP>
" inoremap <Right> <NOP>

" CONFIGURE PLUGINS

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Airline
let g:airline_powerline_fonts = 1       " for better looking symbols
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16_snazzy'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '│'
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline_left_alt_sep = '│'
let g:airline_right_alt_sep = '│'

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_fold_enabled=1
let g:vimtex_view_method = 'zathura'

" Ultisnips
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=['~/.vim/UltiSnips','UltiSnips']
if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
endif

" vim markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_math = 1

" vim-sneak
map f <Plug>Sneak_s
map F <Plug>Sneak_S

" trasparent background
hi Normal guibg=NONE ctermbg=NONE
hi LineNR guibg=NONE ctermbg=NONE
hi! NonText ctermbg=NONE guibg=NONE


"---------------------- Custom Commands ---------------------- 
" Pandoc
let g:file_name = expand('%:t:r')       " file name without file extension
function Pandoc(action)
    let l:pdf_name = g:file_name . ".pdf"
    execute 'w'
    if a:action == "delete"
        execute 'silent ! rm -rf ' . l:pdf_name . ' &'
    else
        execute 'silent ! pandoc % -o ' . l:pdf_name . ' &'
        if a:action == "open"
            execute 'silent ! zathura ' . l:pdf_name . ' &'
        endif
    endif
    execute 'redraw!'
endfunction

" write and compile markdown with pandoc 
:command Pd call Pandoc("compile")

" open compiled pdf 
:command Pdo call Pandoc("open")

" delete compiled pdf 
:command Pdd call Pandoc("delete")

" " PDFLatex
" function Pdflatex(action)
"     let l:pdf_name = g:file_name . ".pdf"
"     execute 'w'
"     execute 'silent ! pdflatex %'
"     if a:action == "open"
"         execute 'silent ! zathura ' . l:pdf_name . ' &'
"     endif
"     execute 'redraw!'
" endfunction

" " write and compile pdf with PDFLatex
" :command Pl call Pdflatex("compile")
 
" " open compiled pdf 
" :command Plo call Pdflatex("open")
