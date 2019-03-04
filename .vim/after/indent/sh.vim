if !exists('b:undo_indent')
  let b:undo_indent = ''
else
  let b:undo_indent .= '|'
endif

setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal softtabstop=4
let b:undo_indent .= 'setlocal expandtab< tabstop< shiftwidth< softtabstop<'
