" store view files
if isdirectory($HOME . '/.vim/cache/view') == 0
  call mkdir($HOME.'/.vim/cache/view', 'p')
endif
set viewdir=~/.vim/cache/view
