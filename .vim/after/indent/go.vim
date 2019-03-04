if !exists('b:undo_indent')
  let b:undo_indent = ''
else
  let b:undo_indent .= '|'
endif

" I prefer my Go code at 4 spaces/tab
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
let b:undo_indent .= 'setlocal shiftwidth< tabstop< softtabstop<'
