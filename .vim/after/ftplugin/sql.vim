" For some reason I regularly end up with trailing whitespace in SQL files
if exists(':StripTrailingWhitespace')
  augroup no_trailing_whitespace
    autocmd! * <buffer>
    autocmd BufWritePre <buffer> silent StripTrailingWhitespace
  augroup END
  let b:undo_ftplugin .= '|au! no_trailing_whitespace * <buffer>'
endif

if executable("sqlformat")
  setlocal formatprg=sqlformat\ --reindent\ --keywords\ upper\ --identifiers\ lower\ -
  let b:undo_ftplugin .= '|setlocal formatprg<'
endif
