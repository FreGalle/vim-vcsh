" Extra configuration for Vimwiki documents
if &filetype !=# 'vimwiki' || v:version < 700
  finish
endif

if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

" Spellcheck documents we're actually editing (not just viewing)
if has('spell') && &modifiable && !&readonly
  setlocal spell
  let b:undo_ftplugin .= '|setlocal spell<'
endif
