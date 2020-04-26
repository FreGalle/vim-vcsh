" Create all the directories needed for a path, with optional flag for
" owner-only permissions
function! path#Create(name, ...) abort
  if a:0 > 2
    echoerr 'Too many arguments'
  endif
  let name = fnamemodify(a:name, ':p')
  if isdirectory(name)
    return 1
  endif
  let path = 'p'
  let prot = a:0 == 1 && a:1 ? 0700 : 0755
  return mkdir(name, path, prot)
endfunction

" Prune all files in the given directory older than a certain number of days.
function! path#Prune(path, days)
  let l:path = expand(a:path)
    if isdirectory(l:path)
      for file in split(globpath(l:path, "*"), "\n")
        if localtime() > getftime(file) + 86400 * a:days && delete(file) != 0
          echo "path#Prune(): Error deleting '" . file . "'"
        endif
      endfor
    else
      echo "path#Prune(): Directory '" . l:path . "' not found"
  endif
endfunction
