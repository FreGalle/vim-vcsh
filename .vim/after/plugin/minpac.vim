if ! exists('*minpac#init')
  finish
endif

command! PackUpdate call minpac#update()
command! PackStatus call minpac#status()
command! PackClean call minpac#clean()
