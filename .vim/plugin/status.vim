hi User1 term=bold cterm=bold ctermfg=Red
hi User2 term=bold cterm=bold ctermfg=Cyan
hi User3 term=bold cterm=bold ctermfg=White
hi User4 ctermfg=White
hi User5 ctermfg=150
hi User6 ctermfg=Grey

" ==============================================================================
" Status Line
" ==============================================================================
function! GitBranch() abort                     " Fetch the Git branch of cwd
    let l:branchname = system("git rev-parse --abbrev-ref HEAD 2>/dev/null
                \ | tr -d '\n'")
    return strlen(l:branchname) > 0 ? '#'.l:branchname : ''
endfunction

set laststatus=2                                " Enable the statusline
set statusline=                                 " Initialize it
set statusline+=%4*%t                           " File name
set statusline+=%1*%r                           " Read-only flag
set statusline+=%3*%m                           " Modified flag
set statusline+=%2*%{&spell?'[SPELL]':''}       " Spell flag
set statusline+=\ %5*%{GitBranch()}             " Show Git branch, if applicable
set statusline+=%4*\>\>\ %=\ \<\<                   " Switch to right-side
set statusline+=\ %4*%y\                        " Filetype
set statusline+=%3l\:%c\ %P                     " Line and column
set statusline+=%4*                             " Color reset
