" Make angle brackets behave like mail quotes
setlocal comments+=n:>
setlocal formatoptions+=coqr
let b:undo_ftplugin .= '|setlocal comments< formatoptions<'

" Stop here if the user doesn't want ftplugin mappings
if exists('no_plugin_maps') || exists('no_gitcommit_maps')
  finish
endif

" Quote operator
nnoremap <buffer> <expr> <LocalLeader>q
      \ quote#Quote()
nnoremap <buffer> <expr> <LocalLeader>qq
      \ quote#Quote().'_'
xnoremap <buffer> <expr> <LocalLeader>q
      \ quote#Quote()
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>q'
      \ . '|nunmap <buffer> <LocalLeader>qq'
      \ . '|xunmap <buffer> <LocalLeader>q'

" Quote operator with reformatting
nnoremap <buffer> <expr> <LocalLeader>Q
      \ quote#QuoteReformat()
nnoremap <buffer> <expr> <LocalLeader>QQ
      \ quote#QuoteReformat().'_'
xnoremap <buffer> <expr> <LocalLeader>Q
      \ quote#QuoteReformat()
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>Q'
      \ . '|nunmap <buffer> <LocalLeader>QQ'
      \ . '|xunmap <buffer> <LocalLeader>Q'
