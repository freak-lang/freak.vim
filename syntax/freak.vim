"  Vim syntax file
" Language: Freak (http://freak-lang.org)
" Maintainer: Timo Sarkar
" Latest Revision: 21 Dezember 2022

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword freakKeyword defn def ns catch if cond do let fn loop get try raise catch finally quote defmacro unless :require retry return return_local
syn keyword freakKeyword match case
syn match freakDynamicVar '\*[a-zA-Z0-9_-]\+\*'
syn match freakKeyword /\(:require\|->\|=>\)/
syn match freakConditional /\(if:\|if_true:\|if_false:\|unless:\|then:\|else:\)/
syn match freakConditional /\(while:\|until:\|loop:\|do:\)/

" Special variables
syn keyword freakSpecialVar nil self super
syn keyword freakBoolean true false

" Literals
syn match freakInteger /\i\@<![-+]\?\d\+/
syn match freakFloat /\i\@<![-+]\?\d\+\.\d\+/
syn match freakSymbol /'\(\w\|[-%^&\*+=:|><\[\]?!~]\)\+/
syn region freakNonInterpString start='"' skip='\\"' end='"'
syn region freakHereDoc start='"""' end='"""'
syn region freakRegexp start='/' skip='\\/' end='/'

" Constants and Identifiers
syn match freakConstant /\u\w*/
syn match freakSlot /@\{1,2\}\(\w\|[-%^&\*+=><?!~]\)\+/

" Syntax Blocks
syn region freakComment start=';;' end='$'

let b:current_syntax = "freak"

" Highlighting
highlight def link freakSlot Identifier
highlight def link freakKeyword Keyword
highlight def link freakConstant Constant
highlight def link freakSpecialVar Special
highlight def link freakBoolean Boolean
highlight def link freakInteger Number
highlight def link freakFloat Float
highlight def link freakSymbol Label
highlight def link freakNonInterpString String
highlight def link freakHereDoc String
highlight def link freakComment Comment
highlight def link freakConditional Conditional
highlight def link freakDynamicVar Macro
highlight def link freakRegexp String
