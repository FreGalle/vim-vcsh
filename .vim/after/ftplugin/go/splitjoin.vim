if ! exists(':SplitjoinJoin')
  finish
endif

nnoremap <buffer> <LocalLeader>j :SplitjoinJoin<CR>
nnoremap <buffer> <LocalLeader>s :SplitjoinSplit<CR>

if ! exists("b:undo_ftplugin")
  let b:undo_ftplugin = ''
endif

let b:undo_ftplugin = 'nunmap <buffer> <LocalLeader>j'
    \ . '|nunmap <buffer> <LocalLeader>s'
