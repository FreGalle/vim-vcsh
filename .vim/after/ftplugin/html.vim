" Don't load if the buffer is not actually HTML (e.g. Markdown)
if &filetype !=# 'html'
  finish
endif

" Use tidy(1) for checking and program formatting
compiler tidy
setlocal equalprg=tidy\ -quiet
let b:undo_ftplugin .= '|unlet b:current_compiler'
      \ . '|setlocal equalprg< errorformat< makeprg<'

" Stop here if the user doesn't want ftplugin mappings
if exists('no_plugin_maps') || exists('no_html_maps')
  finish
endif

" Transform URLs to HTML anchors
nnoremap <buffer> <LocalLeader>r
      \ :<C-U>call html#UrlLink()<CR>
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>r'
