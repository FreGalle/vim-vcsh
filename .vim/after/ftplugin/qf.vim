" Use <silent> so the calls aren't output to the command line
nnoremap <silent> <buffer> <Left> :call quickfix#older()<CR>
nnoremap <silent> <buffer> <Right> :call quickfix#newer()<CR>
