set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/bufexplorer.zip'
Plugin 'kien/ctrlp.vim'
" More actively maintained then official solarized
Plugin 'thomwiggers/vim-colors-solarized'
Plugin 'tpope/vim-surround'
"Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-ruby/vim-ruby'
" Should load before vim-endwise
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-endwise'
Bundle 'digitaltoad/vim-jade'
Bundle 'tpope/vim-fugitive'
Bundle 'sickill/vim-pasta'
Bundle 'tpope/vim-repeat'
Bundle 'christoomey/vim-tmux-navigator'


call vundle#end()

let g:bufExplorerShowRelativePath = 1
let g:bufExplorerShowDirectories = 0
let g:bufExplorerSplitBelow = 1
let g:bufExplorerSplitRight = 1
" Set this to 0 when hidden is set
let g:bufExplorerFindActive = 0 

let g:ctrlp_map = '<Leader>f'
let g:ctrlp_match_window = ',order:ttb,,,'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_show_hidden = 1

let g:syntastic_aggregate_errors = 1
let g:syntastic_id_checkers = 0
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_args = '-R'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '!'
let g:syntastic_mode_map = { "mode": "active", "passive_filetypes": ["java"] } 

let g:user_emmet_leader_key='<Leader>e'
let g:user_emmet_mode='nv'

let delimitMate_expand_space=1
let delimitMate_expand_cr=1

""" Regular stuff
set number
set title
set showcmd
set ruler
set autoread
set mouse=a
set scrolloff=3
set wildignore+=.git
syntax enable
" Note that iTerm2 should report xterm for other color schemes
set background=dark
silent! colorscheme solarized
" Enable filetype-based indenting rules
" See vim.wikia.com on Indenting source code - automatic indentation
filetype plugin indent on

" Indicate the line the cursor is at
set cursorline

" Unsaved buffers no longer complain
set hidden

" Set tab behavior
" This can also be done on a per-filetype basis
set tabstop=2    " Number of spaces a tab counts for
set shiftwidth=2 " Number of spaces used for (auto)indent
set shiftround   " Round indent to multiples of shiftwidth
set smarttab     " Inserts shiftwidth when tabbing in front of line
set expandtab    " Always insert spaces instead of tabs
  
" Allows backspace over indentation, line-end and insert-start
set backspace=2
" Searching options
set hlsearch	 " Highlight matches
set incsearch	 " Incremental searching
set ignorecase " Case doesn't matter
set smartcase	 " Searches are only case-sensitive when containing a case

" Remove delay when pressing Esc
set timeoutlen=1000
set ttimeoutlen=0

" Enable the menu when using <wildchar>-completion
set wildmenu

" Open split windows below and to the right
set splitbelow
set splitright

" Toggle paste mode
set pastetoggle=<F3>

" Wrap at word instead of character
set linebreak

" backup to ~/.tmp 
set backup 
set backupdir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
set undodir=~/.vim/tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set undofile

" Use Groovy filetype for gradle files
au BufNewFile,BufRead *.gradle set filetype=groovy

" Tags always have to be in the top-directory, while vim can be open in
" the source-directory itself
" set tags=./tags;tags

" Delimiter at 81
set colorcolumn=+1
highlight colorcolumn ctermbg=black ctermfg=red

" Nice colors for highlighting
highlight DiffAdd term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange term=reverse cterm=bold ctermbg=cyan ctermfg=black
highlight DiffText term=reverse cterm=bold ctermbg=gray ctermfg=black
highlight DiffDelete term=reverse cterm=bold ctermbg=red ctermfg=black

" Split navigation
map <Tab> <C-w>w
" Note that delimitMate shadows this in certain cases
map <S-Tab> <C-w>W

" Make comma the new leader
let mapleader=","
" And let space function as colon
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

" Fugitive mappings
nnoremap <Leader>gc :Gcommit -v -q<CR>
nnoremap <Leader>gt :Gcommit -v -q %:p<CR>
nnoremap <Leader>gs :Gstatus<CR>

" Make < and > keep the selection
vnoremap < <gv
vnoremap > >gv

" Disable location remembering for git commits
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])

" Use sudow when trying to save a file without sufficient privileges
cnoremap sudow w !sudo tee % >/dev/null

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

" statusline colors
if version >= 700
    " default statusline highlight (colors)
    hi StatusLine   ctermbg=3 ctermfg=0 gui=bold
    " default non-current statusline highlight
    hi StatusLineNC ctermbg=3 ctermfg=0 gui=bold
    " statusline highlight when in INSERT mode
    au InsertEnter * hi StatusLine ctermbg=6 ctermfg=0 gui=bold
    " leaving INSERT mode reset to default
    au InsertLeave * hi StatusLine ctermbg=3 ctermfg=0 gui=bold
endif
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
    
endif " has autocmd
