set nocompatible

call plug#begin('~/.vim/plugged')

" General plugins
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate' " Load before vim-endwise
Plug 'tpope/vim-endwise'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-repeat'

" Display and generate tags
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'

" Language plugins
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'mattn/emmet-vim'
Plug 'pbrisbin/vim-syntax-shakespeare'
" Other
Plug 'rking/ag.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'eagletmt/ghcmod-vim'
Plug 'eagletmt/neco-ghc'
Plug 'Shougo/vimproc.vim', { 'do': 'make -f make_mac.mak' }
Plug 'techlivezheng/vim-plugin-minibufexpl'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'henrik/vim-indexed-search'
Plug 'sjl/gundo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'mileszs/ack.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}
" More actively maintained then official solarized
Plug 'thomwiggers/vim-colors-solarized'
Plug 'sjl/badwolf'

call plug#end()

" ----- kien/ctrlp.vim -----
let g:ctrlp_map = '<Leader>f'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1
"let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" ----- scrooloose/syntastic -----
let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 0
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_args = '-R'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["haskell", "java", "tex"] }
let g:syntastic_check_on_open = 1

" ----- mattn/emmet-vim -----
let g:user_emmet_leader_key='<Leader>e'
let g:user_emmet_mode='nv'
let g:user_emmet_install_global = 0
if has("autocmd")
  autocmd FileType html,css,less,scss,eruby EmmetInstall
endif

" ----- Raimondi/delimitMate -----
let delimitMate_expand_space=1
let delimitMate_expand_cr=1
if has("autocmd")
  augroup delimitMate
    autocmd!
    autocmd FileType markdown let b:delimitMate_nesting_quotes = ["`"]
    autocmd FileType tex let b:delimitMate_quotes = ""
    autocmd FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
    autocmd FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
  augroup END
endif

" ----- bling/vim-airline -----
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1

" ----- jistr/vim-nerdtree-tabs -----
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- xolox/vim-easytags -----
set tags=./\.tags;/
let g:easytags_file = '~/.vim/tags'
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 1
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- airblade/vim-gitgutter -----
hi clear SignColumn
" In vim-airline, only display hunks if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1
let g:gitgutter_map_keys = 0
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" ----- ntpeters/vim-better-whitespace -----
autocmd BufWritePre <buffer> StripWhitespace

" ----- henrik/vim-indexed-search -----
if has("autocmd")
  augroup indexedSearch
    " Center when going to next or previous match
    autocmd VimEnter * nmap n <Plug>(indexed-search-n)zz
    autocmd VimEnter * nmap N <Plug>(indexed-search-N)zz
  augroup END
endif

" ----- junegunn/rainbow_parentheses.vim -----
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" ----- Regular settings -----
filetype plugin indent on
runtime macros/matchit.vim  " Extended matchit functionality
syntax enable
silent! colorscheme badwolf

set shell=bash
set number
set title
set showcmd
set ruler
set autoread
set mouse=a
set scrolloff=3
set wildignore+=.git,.keep
set cursorline        " Indicate the cursor is at
set hidden            " Unsaved buffers no longer complain
set timeoutlen=1000   " Remove delay when pressing Esc
set ttimeoutlen=0
set wildmenu          " Enable the menu when using <wildchar>-completion
set splitbelow
set splitright
set pastetoggle=<F3>  " Toggle paste mode
set linebreak         " Wrap at word instead of character
set backspace=2       " Better backspace behaviour
set textwidth=80
set colorcolumn=+1    " Delimiter at column 81
set lazyredraw        " redraw only when we need to
let mapleader=","     " Comma becomes the new leader

set hlsearch	 " Highlight matches
set incsearch	 " Incremental searching
set ignorecase " Case doesn't matter
set smartcase	 " Searches are only case-sensitive when containing a case

set backup
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
set undodir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set undofile

" Set tab behavior, this can also be done on a per-filetype basis
set tabstop=2    " Number of spaces a tab counts for
set shiftwidth=2 " Number of spaces used for (auto)indent
set shiftround   " Round indent to multiples of shiftwidth
set smarttab     " Inserts shiftwidth when tabbing in front of line
set expandtab    " Always insert spaces instead of tabs

"Nice statusbar
set laststatus=2
set statusline=
set statusline+=%-3.3n\                             " buffer number
set statusline+=%f\                                 " file name
set statusline+=%h%m%r%w                            " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}\]       " filetype
set statusline+=\[%{&encoding},                     " encoding
set statusline+=%{&fileformat}\]\                   " file format
set statusline+=%=                                  " right align
set statusline+=%-10.(%l,%c%V%)\ %<%LL\ -\ %P       " offset

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

highlight colorcolumn ctermfg=red

" Nice colors for highlighting
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black

" ----- Key remappings -----
" Split navigation
map <Tab> <C-w>w
" Note that delimitMate shadows this in certain cases
map <S-Tab> <C-w>W

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Let space function as colon
map <Space> :

" Prevents from going into Ex-mode accidentally
nnoremap Q <Nop>

" Make & trigger :&& so it preserves flags when using & to repeat a subst
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" Exit insert-mode easily
inoremap jk <ESC>

" Two ways to remove search highlights
command C let @/=""
nnoremap <silent> <Leader>/ :noh<CR>
nnoremap <silent> <Leader>// :C<CR>

" When wrapping is on, move cursor by displayed lines instead of file lines
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" Make < and > keep the selection
vnoremap < <gv
vnoremap > >gv

" Use . in visual mode
vnoremap . :norm.<CR>

" Use sudow when trying to save a file without sufficient privileges
cnoremap sudow w !sudo tee % >/dev/null

" ----- rking/ag.vim -----
nnoremap <leader>a :Ag<space>

" ----- tpope/vim-fugitive -----
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gs :Gstatus<CR>

" ----- jistr/vim-nerdtree-tabs -----
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
autocmd FileType nerdtree cnoreabbrev <silent> <buffer> bd :NERDTreeTabsToggle<CR>

" ----- majutsushi/tagbar -----
nmap <silent> <leader>b :TagbarToggle<CR>

" ----- sjl/gundo.vim -----
nnoremap <Leader>u :GundoToggle<CR>

" ----- techlivezheng/vim-plugin-minibufexpl -----
nnoremap <Leader>be :MBEOpen<cr>
nnoremap <Leader>bc :MBEClose<cr>
let g:miniBufExplAutoStart = 0
let g:miniBufExplBRSplit = 0
let g:miniBufExplUseSingleClick = 1

" ----- eagletmt/ghcmod-vim -----
"autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" ----- Valloric/YouCompleteMe -----
let g:ycm_auto_trigger = 0
let g:ycm_collect_identifiers_from_tags_files = 1

if has("autocmd")
    " When editing a file, always jump to the last known cursor position.
    " Don't do it for commit messages, when the position is invalid or when
    " inside an event handler (happens when dropping a file on gvim).
    autocmd BufReadPost *
                \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
                \   execute "normal! g`\"" |
                \ endif

    " At the time of writing vim sees .md as Modula-2
    autocmd BufRead,BufNewFile *.md set filetype=markdown

		" Enable spellchecking for Markdown
		autocmd FileType markdown setlocal spell

		" Automatically wrap at 80 characters for Markdown
		autocmd BufRead,BufNewFile *.md setlocal textwidth=80

		" Automatically wrap at 72 characters and spell check git commit messages
		autocmd FileType gitcommit setlocal textwidth=72
		autocmd FileType gitcommit setlocal spell

		" Allow stylesheets to autocomplete hyphenated words
		autocmd FileType css,scss,sass setlocal iskeyword+=-

    " Use Groovy filetype for gradle files
    autocmd BufRead,BufNewFile *.gradle set filetype=groovy

endif " has autocmd

" ----- eagletmt/neco-ghc -----
let g:ycm_semantic_triggers = {'haskell' : ['.']}
if has("autocmd")
  au BufRead,BufNewFile *.hs setlocal omnifunc=necoghc#omnifunc
endif

