if ! exists(':Git')
  finish
endif

setlocal winfixheight
setlocal winfixwidth
let b:undo_ftplugin .= '|setlocal winfixheight< winfixwidth<'
