" in line (entire line sans white-space)
xnoremap <silent> i- :<c-u>normal! g_v^<cr>
onoremap <silent> i- :<c-u>normal! g_v^<cr>

" around line (entire line sans trailing newline)
xnoremap <silent> a- :<c-u>normal! $v0<cr>
onoremap <silent> a- :<c-u>normal! $v0<cr>

