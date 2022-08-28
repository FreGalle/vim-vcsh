if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

" Spellcheck documents we're actually editing (not just viewing)
if has('spell') && &modifiable && !&readonly
  setlocal spell
  let b:undo_ftplugin .= '|setlocal spell<'
endif

" Respect typed casing on auto-completion
set infercase

" I prefer wrapping in long-form text. Makes it easier to edit the text.
set wrap
set linebreak
set textwidth=0
let b:undo_ftplugin .= '|setlocal wrap< linebreak< textwidth<'

" Stop here if the user doesn't want ftplugin mappings
if exists('no_plugin_maps') || exists('no_vimwiki_maps')
  finish
endif

" Instant preview using vim-markdown-preview
nnoremap <buffer> <LocalLeader>p :InstantMarkdownPreview<CR>
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>p'

" Handy abbreviations/snippets
iabbrev <expr> <buffer> :d strftime("%Y-%m-%d")
iabbrev <expr> <buffer> :t strftime("%H:%M")

" Quote operator
nnoremap <buffer> <expr> <LocalLeader>q
      \ quote#Quote()
nnoremap <buffer> <expr> <LocalLeader>qq
      \ quote#Quote().'_'
xnoremap <buffer> <expr> <LocalLeader>q
      \ quote#Quote()
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>q'
      \ . '|nunmap <buffer> <LocalLeader>qq'
      \ . '|xunmap <buffer> <LocalLeader>q'

" Quote operator with reformatting
nnoremap <buffer> <expr> <LocalLeader>Q
      \ quote#QuoteReformat()
nnoremap <buffer> <expr> <LocalLeader>QQ
      \ quote#QuoteReformat().'_'
xnoremap <buffer> <expr> <LocalLeader>Q
      \ quote#QuoteReformat()
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>Q'
      \ . '|nunmap <buffer> <LocalLeader>QQ'
      \ . '|xunmap <buffer> <LocalLeader>Q'
