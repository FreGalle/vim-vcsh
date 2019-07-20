" store swap files in case something goes wrong
if isdirectory($HOME . '/.vim/cache/swap') == 0
  call mkdir($HOME.'/.vim/cache/swap', 'p')
endif
set directory=~/.vim/cache/swap//
set directory+=~/tmp//
set directory+=.
set swapfile
