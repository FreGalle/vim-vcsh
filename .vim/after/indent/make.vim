if !exists('b:undo_indent')
  let b:undo_indent = ''
else
  let b:undo_indent .= '|'
endif

setlocal noexpandtab
let b:undo_indent .= 'setlocal expandtab<'
