
" Make K jump to the help topic; NeoVim does this, and it's a damned good idea
if !has('nvim')
  nnoremap <buffer> K <C-]>
  let b:undo_ftplugin .= '|nunmap <buffer> K'
endif

