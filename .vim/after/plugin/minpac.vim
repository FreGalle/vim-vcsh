if ! exists('*minpac#init')
  finish
endif

command! PackUpdate call minpac#update('', {'do': 'call minpac#status()'})
command! PackStatus call minpac#status()
command! PackClean call minpac#clean()
