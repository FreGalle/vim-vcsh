" Source: https://stackoverflow.com/a/42118416
"

if has('nvim')
  finish
endif

" Ps = 0  -> blinking block
" Ps = 1  -> blinking block
" Ps = 2  -> steady block
" Ps = 3  -> blinking underline
" Ps = 4  -> steady underline
" Ps = 5  -> blinking bar
" Ps = 6  -> steady bar
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
