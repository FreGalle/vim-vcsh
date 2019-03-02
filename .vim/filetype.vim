if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.yml.tpl		setfiletype yaml
augroup END
