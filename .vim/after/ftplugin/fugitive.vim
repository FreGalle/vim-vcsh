if ! exists(':Git')
  finish
endif

if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

setlocal winfixheight
setlocal winfixwidth

let b:undo_ftplugin .= '|setlocal winfixheight< winfixwidth<'
