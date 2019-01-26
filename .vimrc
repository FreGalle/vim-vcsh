set nocompatible

call plug#begin()

" General plugins

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-obsession -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-obsession'

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-speeddating -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-speeddating'

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-unimpaired -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-unimpaired'

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-repeat -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-repeat'

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-surround -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-vinegar -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-vinegar'

""""""""""""""""""""""""""""""""""
" ----- ctrlpvim/ctrlp.vim -----
""""""""""""""""""""""""""""""""""
Plug 'ctrlpvim/ctrlp.vim'

let g:ctrlp_cache_dir = $HOME.'/.vim/cache/ctrlp'
let g:ctrlp_buftag_types = {'go' : '--language-force=go --golang-types=ftv'}
let g:ctrlp_custom_ignore = '\v[\/]vendor|\.(git|hg|svn)$'
let g:ctrlp_arg_map = 1

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'

let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"""""""""""""""""""""""""""""""""""
" ----- tpope/vim-fugitive -----
"""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'

"""""""""""""""""""""""""""""""""""
" ----- tpope/vim-rhubarb -----
"""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-rhubarb'

"""""""""""""""""""""""""""""""""""
" ----- tpope/vim-abolish -----
"""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-abolish'

"""""""""""""""""""""""""""""""""""
" ----- mileszs/ack.vim -----
"""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'

let g:ackhighlight = 1
let g:ack_autofold_results = 0
let g:ack_mappings = { "o":  "<CR>zz" }
let g:ack_mappings = { "O":  "<CR>zz<C-W><C-W>:ccl<CR>" }
let g:ack_mappings = { "go": "<CR>zz<C-W>j" }
let g:ack_mappings = { "s": "<C-W><CR><C-W>K" }
let g:ack_mappings = { "S": "<C-W><CR><C-W>K<C-W>b" }
let g:ack_lhandler = "lopen"

if executable("rg")
  let g:ackprg = 'rg --vimgrep --no-heading --column'
  set grepformat^=%f:%l:%c:%m
endif

""""""""""""""""""""""""""""""""""
" ----- jiangmiao/auto-pairs -----
""""""""""""""""""""""""""""""""""
Plug 'jiangmiao/auto-pairs'

let g:AutoPairsCenterLine = 0
let g:AutoPairsMultilineClose = 0

""""""""""""""""""""""""""""""""""
" ----- tpope/vim-commentary -----
""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-commentary'

""""""""""""""""""""""""""""""""""
" ----- fatih/vim-go -----
""""""""""""""""""""""""""""""""""
Plug 'fatih/vim-go'

""""""""""""""""""""""""""""""""""
" ----- AndrewRadev/splitjoin.vim -----
""""""""""""""""""""""""""""""""""
Plug 'AndrewRadev/splitjoin.vim', {'for':'go'}

""""""""""""""""""""""""""""""""""
" ----- airblade/vim-gitgutter -----
""""""""""""""""""""""""""""""""""
Plug 'airblade/vim-gitgutter'

""""""""""""""""""""""""""""""""""
" ----- sjl/badwolf -----
""""""""""""""""""""""""""""""""""
Plug 'sjl/badwolf'

""""""""""""""""""""""""""""""""""
" ----- morhetz/gruvbox -----
""""""""""""""""""""""""""""""""""
Plug 'morhetz/gruvbox'

let g:gruvbox_invert_selection=0

""""""""""""""""""""""""""""""""""
" ----- kshenoy/vim-signature -----
""""""""""""""""""""""""""""""""""
Plug 'kshenoy/vim-signature'

""""""""""""""""""""""""""""""""""
" ----- mihais/vim-mark -----
""""""""""""""""""""""""""""""""""
Plug 'mihais/vim-mark'

nmap <Leader>1 <Plug>MarkSearchGroup1Next
nmap <Leader>2 <Plug>MarkSearchGroup2Next
nmap <Leader>3 <Plug>MarkSearchGroup3Next
nmap <Leader>4 <Plug>MarkSearchGroup4Next
nmap <Leader>5 <Plug>MarkSearchGroup5Next
nmap <Leader>6 <Plug>MarkSearchGroup6Next

""""""""""""""""""""""""""""""""""
" ----- mbbill/undotree -----
""""""""""""""""""""""""""""""""""
Plug 'mbbill/undotree'

let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1

""""""""""""""""""""""""""""""""""
" ----- christoomey/vim-tmux-navigator -----
""""""""""""""""""""""""""""""""""
Plug 'christoomey/vim-tmux-navigator'

""""""""""""""""""""""""""""""""""
" ----- edkolev/tmuxline.vim -----
""""""""""""""""""""""""""""""""""

Plug 'edkolev/tmuxline.vim'

""""""""""""""""""""""""""""""""""
" ----- vimwiki/vimwiki -----
""""""""""""""""""""""""""""""""""

Plug 'vimwiki/vimwiki'

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'auto_tags': 1}]
let g:vimwiki_auto_chdir = 1

au BufRead,BufNewFile *.wiki set filetype=vimwiki
au Filetype vimwiki let b:delimitMate_expand_space = 0

au Filetype vimwiki nmap <buffer> <LocalLeader>x <Plug>VimwikiToggleListItem
au Filetype vimwiki nmap <buffer> <LocalLeader>j <Plug>VimwikiDiaryNextDay
au Filetype vimwiki nmap <buffer> <LocalLeader>k <Plug>VimwikiDiaryPrevDay

""""""""""""""""""""""""""""""""""
" ----- junegunn/vim-easy-align -----
""""""""""""""""""""""""""""""""""

Plug 'junegunn/vim-easy-align'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

""""""""""""""""""""""""""""""""""
" ----- machakann/vim-highlightedyank -----
""""""""""""""""""""""""""""""""""

Plug 'machakann/vim-highlightedyank'

let g:highlightedyank_highlight_duration = 400

""""""""""""""""""""""""""""""""""
" ----- junegunn/vim-easy-align -----
""""""""""""""""""""""""""""""""""

Plug 'junegunn/goyo.vim'

""""""""""""""""""""""""""""""""""
" ----- sheerun/vim-polyglot -----
""""""""""""""""""""""""""""""""""

Plug 'sheerun/vim-polyglot'

let g:polyglot_disabled = ['markdown']
let g:markdown_fenced_languages = ['bash=sh', 'css', 'go', 'json=javascript', 'sql' ]

""""""""""""""""""""""""""""""""""
" ----- b4winckler/vim-angry -----
""""""""""""""""""""""""""""""""""

Plug 'b4winckler/vim-angry'

call plug#end()

"
" ----- General settings -----
"

filetype plugin indent on
syntax enable

" set termguicolors
set background=dark

colorscheme gruvbox

silent! set encoding=utf-8
set noerrorbells
set nonumber
set ruler
set showcmd
set noshowmode
set hidden

set mouse=a

set nowrap

set splitright
set splitbelow

set pastetoggle=<F3>

" set relativenumber " seems to slow down neovim

set wildmenu
set wildmode=full
set wildcharm=<C-z>

set path-=/usr/include

set autoread

set updatetime=250

set nobackup
set nowritebackup

" store swap files in case something goes wrong
if isdirectory($HOME . '/.vim/cache/swap') == 0
  call mkdir($HOME.'/.vim/cache/swap', 'p')
endif
set directory=~/.vim/cache/swap//
set directory+=~/tmp//
set directory+=.

" undofile - This allows you to use undos after exiting and restarting
if isdirectory($HOME . '/.vim/cache/undo') == 0
  call mkdir($HOME.'/.vim/cache/undo', 'p')
endif
set undodir=~/.vim/cache/undo//
set undofile

" viminfo stores the the state of your previous editing session
if exists('+shada')
  set shada+=n~/.vim/cache/shada
else
  set viminfo+=n~/.vim/cache/viminfo
endif

set showmatch

set autoindent
set backspace=indent,eol,start

" Set tab behavior, this can also be done on a per-filetype basis
set tabstop=2    " Number of spaces a tab counts for
set shiftwidth=2 " Number of spaces used for (auto)indent
set shiftround   " Round indent to multiples of shiftwidth
set smarttab     " Inserts shiftwidth when tabbing in front of line
set expandtab    " Always insert spaces instead of tabs

set nrformats-=octal

" Time out on key codes but not mappings.
set notimeout
set ttimeout
set ttimeoutlen=100

set hlsearch           " Highlight matches
set incsearch          " Incremental searching
set ignorecase         " Case doesn't matter
set smartcase          " Searches are only case-sensitive when containing a case
if has ('nvim')
  set inccommand=nosplit " Incremental in-place replace
endif

set scrolloff=1
set sidescrolloff=5

set linebreak
set textwidth=79
set formatoptions+=qj1lncr

set fillchars=vert:\|,stl:\-,stlnc:\-,fold:-,diff:┄

" Better Completion
set complete=.,w,b,u,t
set completeopt=longest,menuone

set showbreak=›\ 
set list listchars=tab:›\ ,trail:·,extends:>,precedes:<,nbsp:·

set tags=./.tags,./tags,.tags,tags

set diffopt+=vertical,indent-heuristic,algorithm:patience

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>

function! Tmpwatch(path, days)
    let l:path = expand(a:path)
    if isdirectory(l:path)
        for file in split(globpath(l:path, "*"), "\n")
            if localtime() > getftime(file) + 86400 * a:days && delete(file) != 0
                echo "Tmpwatch(): Error deleting '" . file . "'"
            endif
        endfor
    else
        echo "Tmpwatch(): Directory '" . l:path . "' not found"
    endif
endfunction

" remove undo files which have not been modified for 31 days
call Tmpwatch(&undodir, 31)

"
" "----- Key mappings -----
"

" Comma becomes the new leader
let mapleader=","
let maplocalleader="\\"

nnoremap <Leader>e :edit **/*<C-z><S-Tab>
nnoremap <Leader>f :find **/*<C-z><S-Tab>

" Turn the word under the cursor into a UTC-timestamp
"
" 1. delete inner word into 'z' register
" 2. ??? 'norm i'
" 3. Execute a system command to transform the contents of the z-register to
"    a UTC timestamp.

" Transform the word under the cursor into a UTC-timestamp.
noremap <silent> <Leader>t "zdiw:exe 'norm i' . system("echo <C-R>z \| cut -c1-10 \| TZ=UTC xargs date -R -r")<CR>kJx

" Transform the word under the cursor into a duration (in seconds).
noremap <silent> <Leader>s "zdiw:exe 'norm i' . system("printf '%.3f\n' `echo 'scale=3;<C-R>z/1000000000' \| bc`")<CR>kJx

" Let space function as colon
map <Space> :

" Prevents from going into Ex-mode accidentally
nnoremap Q <Nop>

" Exit insert-mode easily
inoremap jj <ESC>

" When wrapping is on, move cursor by displayed lines instead of file lines
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

" Make < and > keep the selection
vnoremap < <gv
vnoremap > >gv

" Use . in visual mode
vnoremap . :norm.<CR>

" Use sudow when trying to save a file without sufficient privileges
cnoremap w!! w !sudo tee > /dev/null %

" Move between splits more easily
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
tnoremap <C-h> <C-\><C-N><C-W>h
tnoremap <C-j> <C-\><C-N><C-W>j
tnoremap <C-k> <C-\><C-N><C-W>k
tnoremap <C-l> <C-\><C-N><C-W>l

" Clear the highlighting of :set hlsearch
nnoremap <esc><esc> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

"
" ----- File Type Settings -----
"

au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.json setlocal ft=json expandtab ts=2 sw=2 tw=0
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.md setlocal expandtab ts=4 sw=4 sts=4 tw=0
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

au BufNewFile,BufRead *.md setlocal filetype=markdown
au BufNewFile,BufRead *.yml.tpl setlocal syntax=yaml

au FileType gitcommit setlocal nolist spell
au FileType gitconfig setlocal noet ts=4 sw=4
au FileType json setlocal conceallevel=0 foldmethod=syntax foldlevel=999
au FileType vim setlocal keywordprg=:help
au FileType sh setlocal noet ts=4 sw=4

au BufWritePre *.sql :%s/\s\+$//e

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit

" TODO move to different section

autocmd WinEnter * stopinsert
autocmd VimResized * wincmd =

let g:netrw_banner=0

"
" ----- Plugin Settings -----
"
let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
