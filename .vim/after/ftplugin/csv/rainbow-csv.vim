if ! exists(':RainbowAlign')
    finish
endif

nnoremap <buffer> <silent> <LocalLeader>a :RainbowAlign<CR>
nnoremap <buffer> <silent> <LocalLeader>s :RainbowShrink<CR>

let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>a'
      \ . '|nunmap <buffer> <LocalLeader>s'
