" Make vim non-vi-compatible because that is useless
set nocompatible

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Call our plugin manager
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'               " In-vim git stuff
Plugin 'tpope/vim-commentary'             " Easy comment-out stuff
Plugin 'vim-scripts/ReplaceWithRegister'  " Easy replacing with yanked text
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
" Plugin 'justinmk/vim-sneak'               " better f usage
" Plugin 'Konfekt/FastFold'                 " better folding so vimtex doesn't lag
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'christoomey/vim-system-copy'      " Copy and paste to clipboard without
                                          " having to install gvim on Arch for 
                                          " `+clipboard`. Requires Arch package
                                          " `xsel`

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
" let base16colorspace=256
colorscheme base16-snazzy
set termguicolors

" custom snazzy color for darker folds, color column etc.
" not working btw. just notating
let s:gui01        = "1a1a1f"
let g:base16_gui01 = "1a1a1f"

" transparent background
hi Normal guibg=NONE ctermbg=NONE
hi LineNR guibg=NONE ctermbg=NONE

" copy and paste from clipboard by default
set clipboard=unnamedplus

" Allow mouse support
set mouse=a

" New tabs to the right
set splitright

" Set underscore and hyphen as word boundary
set iskeyword-=_
set iskeyword-=-

"
" Allow mouse scrolling without mouse clicks
nmap <LeftMouse> <nop>
imap <LeftMouse> <nop>
vmap <LeftMouse> <nop>

" CONFIGURE PLUGINS

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let NERDTreeShowHidden=1
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
let g:NERDTreeWinSize=20

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
let g:airline#extensions#tabline#show_tabs = 0  " don't show tabs so buffers are shown

" Vimtex
let g:tex_flavor='latex'
let g:vimtex_compiler_latexmk = {'callback' : 0}
let g:vimtex_fold_enabled=1
" let g:vimtex_matchparen_enabled=1
" let g:vimtex_fold_manual=1
let g:vimtex_view_method = 'zathura'
" clean on exit
augroup vimtex_config
au!
au User VimtexEventQuit call vimtex#compiler#clean(0)
augroup END

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
" map f <Plug>Sneak_s
" map F <Plug>Sneak_S

" fastfold
" let g:tex_fold_enabled = 1





"---------------------- Custom Commands ---------------------- 
" Pandoc
function Pandoc(action)
    let g:file_name = expand('%:t:r')       " file name without file extension
    let l:pdf_name = g:file_name . ".pdf"
    let l:md_name = g:file_name . ".md"
    execute 'w'
    if a:action == "delete"
        execute 'silent ! rm -rf ' . l:pdf_name . ' &'
    else
        if a:action == "open"
            execute 'silent ! pandoc ' . l:md_name . ' -o ' . l:pdf_name . ' ;'
            execute 'silent ! zathura ' . l:pdf_name . ' &'
        else
            execute 'silent ! pandoc ' . l:md_name . ' -o ' . l:pdf_name . ' &'
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
