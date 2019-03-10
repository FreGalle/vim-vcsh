" Extra configuration for shell script
if &filetype !=# 'sh' || v:version < 700 || &compatible
  finish
endif

" Set comment formats
setlocal comments=:#
setlocal formatoptions+=or
let b:undo_ftplugin .= '|setlocal comments< formatoptions<'
