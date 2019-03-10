" Extra configuration for Vim help files
if &filetype !=# 'help' || v:version < 700
  finish
endif

" Make K jump to the help topic; NeoVim does this, and it's a damned good idea
if !has('nvim')
  nnoremap <buffer> K <C-]>
  let b:undo_ftplugin .= '|nunmap <buffer> K'
endif

" Directly opening help files does not disable the nolist option
setlocal nolist
let b:undo_ftplugin .= '|setlocal list<'
