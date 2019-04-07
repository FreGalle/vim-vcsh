"
" sec_duration.vim: Turn the (nanoseconds) number under the cursor into
" a duration in seconds.
"
" Author: Frederik Galle
"

if exists('g:loaded_sec_duration') || &compatible
  finish
endif
let g:loaded_sec_duration = 1

function! s:ToDuration(w)
  let nanos = a:w
  return system("printf '%.3f' `echo 'scale=3;" . nanos . "/1000000000' | bc`")
endfunction

function! s:WordToDuration()
  let res = s:ToDuration(expand("<cword>"))
  execute 'normal! ciw' . res
endfunction

command! ToSecDuration call <SID>WordToDuration()
