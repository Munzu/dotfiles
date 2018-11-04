" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Snazzy Scheme by Tai Mai (https://github.com/Munzu)
" Modified Apathy scheme
let g:airline#themes#base16_snazzy#palette = {}
let s:gui00 = "#1e1f29"
let s:gui01 = "#34353e"
let s:gui02 = "#4a4b53"
let s:gui03 = "#78787e"
let s:gui04 = "#a5a5a9"
let s:gui05 = "#eff0eb"
let s:gui06 = "#f1f1f0"
let s:gui07 = "#f1f1f0"
let s:gui08 = "#ff5c57"
let s:gui09 = "#ff9f43"
let s:gui0A = "#f3f99d"
let s:gui0B = "#5af78e"
let s:gui0C = "#9aedfe"
let s:gui0D = "#57c7ff"
let s:gui0E = "#ff6ac1"
let s:gui0F = "#b2643c"

" Terminal color definitions
let s:cterm00        = 00
let s:cterm01        = 18
let s:cterm02        = 19
let s:cterm03        = 08
let s:cterm04        = 20
let s:cterm05        = 07
let s:cterm06        = 21
let s:cterm07        = 15
let s:cterm08        = 01
let s:cterm09        = 16
let s:cterm0A        = 03
let s:cterm0B        = 02
let s:cterm0C        = 06
let s:cterm0D        = 04
let s:cterm0E        = 05
let s:cterm0F        = 17

let s:term_red = 1
let s:term_green = 2
let s:term_yellow = 3
let s:term_blue = 4
let s:term_purple = 5
let s:term_white = 7
let s:term_black = 0
let s:term_grey = 8
let s:term_red = 204
let s:term_green = 114
let s:term_yellow = 180
let s:term_blue = 39
let s:term_purple = 170
let s:term_white = 145
let s:term_black = 235
let s:term_grey = 236

let s:N1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
" let s:N2   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]

" taken from onedark
let s:N2   = [ '#ABB2BF', '#3E4452', s:term_white, s:term_grey ]
let s:N3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_snazzy#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
" let s:I2   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
" taken from onedark
let s:I2   = s:N2
let s:I3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_snazzy#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
" let s:R2   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = s:N2
let s:R3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_snazzy#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
" let s:V2   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = s:N2
let s:V3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let g:airline#themes#base16_snazzy#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" let s:IA1   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
" let s:IA2   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
" let s:IA3   = [ s:gui03, s:gui01, s:cterm03, s:cterm01 ]
let s:IA1 = [ '#282C34', '#ABB2BF', s:term_black, s:term_white ]
let s:IA2 = [ '#ABB2BF', '#3E4452', s:term_white, s:term_grey ]
let s:IA3 = s:N2
let g:airline#themes#base16_snazzy#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)




let s:WI = [ '#282C34', '#E5C07B', 235, 180]
let g:airline#themes#base16_snazzy#palette.normal.airline_warning = [
   \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
   \ ]

" let g:airline#themes#base16_snazzy#palette.normal_modified.airline_warning =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

let g:airline#themes#base16_snazzy#palette.insert.airline_warning =
  \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

" let g:airline#themes#base16_snazzy#palette.insert_modified.airline_warning =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

let g:airline#themes#base16_snazzy#palette.visual.airline_warning =
  \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

" let g:airline#themes#base16_snazzy#palette.visual_modified.airline_warning =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

let g:airline#themes#base16_snazzy#palette.replace.airline_warning =
  \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

" let g:airline#themes#base16_snazzy#palette.replace_modified.airline_warning =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_warning

" " Errors
" let s:ER = [ '#282C34', '#E06C75', s:term_black, s:term_red ]
" let g:airline#themes#base16_snazzy#palette.normal.airline_error = [
"    \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
"    \ ]


" let g:airline#themes#base16_snazzy#palette.normal_modified.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" let g:airline#themes#base16_snazzy#palette.insert.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" let g:airline#themes#base16_snazzy#palette.insert_modified.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" let g:airline#themes#base16_snazzy#palette.visual.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" let g:airline#themes#base16_snazzy#palette.visual_modified.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" let g:airline#themes#base16_snazzy#palette.replace.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" let g:airline#themes#base16_snazzy#palette.replace_modified.airline_error =
"   \ g:airline#themes#base16_snazzy#palette.normal.airline_error

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_snazzy#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])

