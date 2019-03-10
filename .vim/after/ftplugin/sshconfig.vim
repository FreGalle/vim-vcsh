" Extra configuration for sshconfig script
if &filetype !=# 'sshconfig' || v:version < 700 || &compatible
  finish
endif

setlocal keywordprg=man\ ssh_config\ -P\ \'less\ -p\ <cword>\'
let b:undo_ftplugin .= '|setlocal keywordprg<'
