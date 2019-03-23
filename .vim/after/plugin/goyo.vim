if ! exists(':Goyo')
  finish
endif

function! s:goyo_enter()
  setlocal noshowcmd
endfunction

function! s:goyo_leave()
  setlocal showcmd
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
