" Directly opening help files does not disable the nolist option
setlocal nolist
let b:undo_ftplugin .= '|setlocal list<'

" Stop here if the user doesn't want ftplugin mappings
if exists('no_plugin_maps') || exists('no_help_maps')
  finish
endif

" Make K jump to the help topic; NeoVim does this, and it's a damned good idea
if !has('nvim')
  nnoremap <buffer> K <C-]>
  let b:undo_ftplugin .= '|nunmap <buffer> K'
endif

