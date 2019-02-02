if isdirectory($HOME . '/.vim/cache/backup') == 0
  call mkdir($HOME.'/.vim/cache/backup', 'p')
endif
set backupdir^=~/.vim/cache/backup//

" Make a backup before overwriting a file and remove it afterwards
set writebackup

" Make no permanent backups before overwriting a file
set nobackup
