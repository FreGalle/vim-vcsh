if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

setlocal comments=s1:/*,mb:*,ex:*/,://
let b:undo_ftplugin .= '|setlocal comments<'
