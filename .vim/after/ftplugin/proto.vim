" Extra configuration for protocol buffers
if &filetype !=# 'proto' || v:version < 700 || &compatible
  finish
endif

if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

setlocal comments=s1:/*,mb:*,ex:*/,://
let b:undo_ftplugin .= '|setlocal comments<'
