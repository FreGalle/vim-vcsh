" Extra configuration for Vim scripts
if &filetype !=# 'vim' || v:version < 700 || &compatible
  finish
endif

if exists(':Help')
  setlocal keywordprg=:Help
  let b:undo_ftplugin .= '|setlocal keywordprg<'
endif
