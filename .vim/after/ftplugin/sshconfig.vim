setlocal keywordprg=man\ ssh_config\ -P\ \'less\ -p\ <cword>\'
let b:undo_ftplugin .= '|setlocal keywordprg<'
