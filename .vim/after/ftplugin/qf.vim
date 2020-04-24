" Stop here if the user doesn't want ftplugin mappings
if exists('no_plugin_maps')
  finish
endif

" Use <silent> so the calls aren't output to the command line
nnoremap <silent> <buffer> <Left> :call quickfix#older()<CR>
nnoremap <silent> <buffer> <Right> :call quickfix#newer()<CR>
let b:undo_ftplugin .= '|nunmap <buffer> <Left>'
      \ . '|nunmap <buffer> <Right>'
