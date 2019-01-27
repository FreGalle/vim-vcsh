" undofile - This allows you to use undos after exiting and restarting
if isdirectory($HOME . '/.vim/cache/undo') == 0
  call mkdir($HOME.'/.vim/cache/undo', 'p')
endif
set undodir=~/.vim/cache/undo//
set undofile

function! s:tmpwatch(path, days)
    let l:path = expand(a:path)
    if isdirectory(l:path)
        for file in split(globpath(l:path, "*"), "\n")
            if localtime() > getftime(file) + 86400 * a:days && delete(file) != 0
                echo "Tmpwatch(): Error deleting '" . file . "'"
            endif
        endfor
    else
        echo "Tmpwatch(): Directory '" . l:path . "' not found"
    endif
endfunction

" remove undo files which have not been modified for 31 days
call s:tmpwatch(&undodir, 31)
