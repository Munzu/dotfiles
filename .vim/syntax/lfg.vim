" Vim syntax file
" Language: LFG Grammar
" Maintainer: Joseph Chee Chang
" Latest Revision: 7 Nov 2013

if exists("b:current_syntax")
  finish
endif

if has('conceal')
    syn match UPDOWN "[\^]" conceal cchar=↑
    syn match UPDOWN "[!]" conceal cchar=↓
    syn match UPDOWN "[<>]"
else
    syn match UPDOWN "[\^!<>]"
endif
syn region CLASS start="'" end="'" contains=PRED,UPDOWN

syn match P "[a-zA-Z]\+\s*-->"
syn match A "[a-zA-Z ()]\+\s*:"
syn region RULES start='^\s*[a-zA-Z]\+.*-->' end='\.' contains=UPDOWN,P,A


syn match L "^\s*[a-zA-Z]\+\s"
syn match A2 "[a-zA-Z]\+\s*\*"
syn region LEXICON start='^\s*[A-Za-z]\+.*\*' end='\.' contains=UPDOWN,L,A2,CLASS


syn region GLOBAL start='^' end='$' contains=LEXICON, RULES

let b:current_syntax = "lfg"

hi def link P Type
hi def link A Statement
hi def link A2 Statement
hi def link L PreProc
hi def link CLASS String
if has('conceal')
    hi def link UPDOWN Conceal
    setlocal conceallevel=2
else
    hi def link UPDOWN Todo
endif

