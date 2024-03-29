if !exists('b:undo_ftplugin')
  let b:undo_ftplugin = ''
endif

" Spellcheck documents we're actually editing (not just viewing)
if has('spell') && &modifiable && !&readonly
  setlocal spell
  let b:undo_ftplugin .= '|setlocal spell<'
endif

" Let's try this heading-based fold method out (Tim Pope)
setlocal foldexpr=markdown#Fold()
setlocal foldmethod=expr
let b:undo_ftplugin .= '|setlocal foldexpr< foldmethod<'

" Respect typed casing on auto-completion
set infercase

" Stop here if the user doesn't want ftplugin mappings
if exists('no_plugin_maps') || exists('no_markdown_maps')
  finish
endif

" Instant preview using vim-markdown-preview
nnoremap <buffer> <LocalLeader>p :InstantMarkdownPreview<CR>
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>p'

" Quote operator
nnoremap <buffer> <expr> <LocalLeader>q
      \ quote#Quote()
xnoremap <buffer> <expr> <LocalLeader>q
      \ quote#Quote()
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>q'
      \ . '|xunmap <buffer> <LocalLeader>q'

" Quote operator with reformatting
nnoremap <buffer> <expr> <LocalLeader>Q
      \ quote#QuoteReformat()
xnoremap <buffer> <expr> <LocalLeader>Q
      \ quote#QuoteReformat()
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>Q'
      \ . '|xunmap <buffer> <LocalLeader>Q'

" Autoformat headings
command -buffer -nargs=1 MarkdownHeading
      \ call markdown#Heading(<f-args>)
nnoremap <buffer> <LocalLeader>=
      \ :<C-U>MarkdownHeading =<CR>
nnoremap <buffer> <LocalLeader>-
      \ :<C-U>MarkdownHeading -<CR>
let b:undo_ftplugin .= '|delcommand MarkdownHeading'
      \ . '|nunmap <buffer> <LocalLeader>='
      \ . '|nunmap <buffer> <LocalLeader>-'
