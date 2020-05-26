if !exists('b:undo_indent')
  let b:undo_indent = ''
else
  let b:undo_indent .= '|'
endif

" This is only here to make vim indent literal strings with spaces. It should
" be safe to assume that we will be running go-fmt upon saving go files, at
" which point leading spaces in the code will be converted to tabs again.
setlocal expandtab

" I prefer my Go code at 4 spaces/tab
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
let b:undo_indent .= 'setlocal expandtab< shiftwidth< tabstop< softtabstop<'
