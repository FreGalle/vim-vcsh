" viminfo stores the the state of your previous editing session
if exists('+shada')
  set shada+=n~/.vim/cache/shada
else
  set viminfo+=n~/.vim/cache/viminfo
endif
