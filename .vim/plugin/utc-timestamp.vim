"
" utc-timestamp.vim: Turn the number under the cursor into a UTC timestamp.
"
" Author: Frederik Galle
" Source: sjl/dotfiles
"

if exists('g:loaded_utc_timestamp') || &compatible
  finish
endif
let g:loaded_utc_timestamp = 1

function! s:ToUTC(w)
  let seconds = strpart(a:w, 0, 10)
  return substitute(system("date -ur " . seconds), "\n\n*", "", "")
endfunction

function! s:WordToUTC()
  let res = s:ToUTC(expand("<cword>"))
  execute 'normal! ciw' . res
endfunction

command! ToTimestamp call <SID>WordToUTC()
