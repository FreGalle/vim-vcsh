if exists(':Help')
  setlocal keywordprg=:Help
  let b:undo_ftplugin .= '|setlocal keywordprg<'
endif
