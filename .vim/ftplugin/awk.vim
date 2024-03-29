" Only do this when not yet done for this buffer
if exists('b:did_ftplugin')
  finish
endif

" Set comment formats
setlocal comments=:#
setlocal formatoptions+=or
let b:undo_ftplugin = 'setlocal comments< formatoptions<'

" Specify ERE flavor for regex_escape.vim
let b:regex_escape_flavor = 'ere'
let b:undo_ftplugin .= '|unlet b:regex_escape_flavor'
