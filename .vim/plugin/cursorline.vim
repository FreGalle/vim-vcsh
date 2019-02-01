if !exists('+cursorline')
  finish
endif

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave                      * setlocal nocursorline
augroup END
