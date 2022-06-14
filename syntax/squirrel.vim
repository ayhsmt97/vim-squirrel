" Vim syntax file
" Language:	Squirrel

if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  " we define it here so that included files can test for it
  let main_syntax='squirrel'
  elseif exists("b:current_syntax") && b:current_syntax == "squirrel"
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword squirrelTodo         TODO FIXME XXX TBD
syn match squirrelLineComment    "\/\/.*" contains=@Spell,squirrelLineComment,squirrelTodo
syn region squirrelComment       start="\/*" end="\*/" contains=@Spell,squirrelComment,squirrelTodo

syn keyword squirrelType         local
syn keyword squirrelStorage      enum
syn keyword squirrelRepeat       break continue for foreach return while yield
syn keyword squirrelConditional  else if switch
syn keyword squirrelLabel        case default
syn keyword squirrelConstant     true false null
syn keyword squirrelException    try catch throw
syn keyword squirrelLinq         in
syn keyword squirrelStatement    this typeof instanceof

syn match squirrelBraces "[{}\[\]]]" display
syn match	squirrelParens	"[()]" display
syn match	squirrelOpSymbols	"+\{1,2}" display
syn match	squirrelOpSymbols	"-\{1,2}" display
syn match	squirrelOpSymbols	"=\{1,2}" display
syn match	squirrelOpSymbols	">\{1,2}" display
syn match	squirrelOpSymbols	"<\{1,2}" display
syn match	squirrelOpSymbols	"[!><+\-*/]=" display
syn match	squirrelOpSymbols	"[!*/^]" display
syn match	squirrelOpSymbols	"=>" display
syn match	squirrelEndColon	";" display
syn match	squirrelLogicSymbols	"&&" display
syn match	squirrelLogicSymbols	"||" display
syn match	squirrelLogicSymbols	"?" display
syn match	squirrelLogicSymbols	":" display

syn keyword squirreClass           class contained

hi def link squirrelType    Type
hi def link squirrelClass   Structure
hi def link squirrelStorage Structure
hi def link squirrelRepeat  Repeat
hi def link squirrelConditional Conditional
hi def link squirrelLabel   Label
hi def link squirrelException Exception
hi def link Statement Statement
hi def link squirrelLinq Statement
hi def link squirrelTodo Todo
hi def link squirrelComment Comment
hi def link squirrelLineComment Comment

let b:current_syntax = 'squirrel'

let &cpoptions = s:save_cpo
unlet s:save_cpo
