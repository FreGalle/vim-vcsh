"
" Source: https://github.com/vim/vim/issues/2490
"
if has('nvim')
  finish
endif

function! s:enterNormalMode()
    if &buftype == 'terminal' && mode('') == 't'
        call feedkeys("\<c-w>N")
        call feedkeys("\<c-y>")
    endif
endfunction

tmap <silent> <ScrollWheelUp> <c-w>:call <sid>enterNormalMode()<cr>
