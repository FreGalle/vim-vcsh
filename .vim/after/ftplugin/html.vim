" Extra configuration for HTML files
if &filetype !=# 'html' || v:version < 700 || &compatible
  finish
endif

" Use tidy(1) for checking and program formatting
compiler tidy
setlocal equalprg=tidy\ -quiet
let b:undo_ftplugin .= '|unlet b:current_compiler'
      \ . '|setlocal equalprg< errorformat< makeprg<'

" Stop here if the user doesn't want ftplugin mappings
if exists('g:no_plugin_maps') || exists('g:no_html_maps')
  finish
endif

" Transform URLs to HTML anchors
nnoremap <buffer> <LocalLeader>r
      \ :<C-U>call html#UrlLink()<CR>
let b:undo_ftplugin .= '|nunmap <buffer> <LocalLeader>r'
