if ! exists(':TabooRename')
  finish
endif

if exists('+sessionoptions')
  set sessionoptions+=tabpages,globals
endif
