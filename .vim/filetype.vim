if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.awk		setfiletype awk
  au! BufRead,BufNewFile *.csv		setfiletype csv
  au! BufRead,BufNewFile *.env,.env.*,env		setfiletype sh
  au! BufRead,BufNewFile *.sed		setfiletype sed
  au! BufRead,BufNewFile *.yml.tpl,*.yaml.tpl		setfiletype yaml

  au! BufRead,BufNewFile .tmux.conf,tmux.conf	setfiletype tmux
augroup END
