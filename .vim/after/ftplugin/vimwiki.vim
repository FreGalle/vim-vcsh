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

" Instant preview using vim-markdown-preview
nnoremap <buffer> <LocalLeader>p :InstantMarkdownPreview<CR>
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>p'

" Handy abbreviations/snippets
iabbrev <expr> <buffer> :d strftime("%Y-%m-%d")
