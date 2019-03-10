"
" File: plugins.vim
" Description: Plugins and configuration
"

" Initialisation {{{
set nocompatible
let g:plug_shallow = 0
" }}}

call plug#begin()

" General {{{
Plug 'https://sanctum.geek.nz/code/vim-big-file-options.git'
Plug 'https://sanctum.geek.nz/code/vim-uncap-ex.git'
Plug 'https://sanctum.geek.nz/code/vim-strip-trailing-whitespace.git'
Plug 'https://sanctum.geek.nz/code/vim-shebang-create-exec.git'
Plug 'https://sanctum.geek.nz/code/vim-cmdwin-ctrlc.git'
Plug 'https://sanctum.geek.nz/code/vim-digraph-search.git'
Plug 'https://sanctum.geek.nz/code/vim-equalalways-resized.git'
Plug 'https://sanctum.geek.nz/code/vim-foldlevelstart-stdin.git'
Plug 'https://sanctum.geek.nz/code/vim-insert-cancel.git'
Plug 'https://sanctum.geek.nz/code/vim-insert-suspend-hlsearch.git'
Plug 'https://sanctum.geek.nz/code/vim-insert-timeout.git'
Plug 'https://sanctum.geek.nz/code/vim-quickfix-auto-open.git'
" }}}
" Colorschemes {{{
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'https://sanctum.geek.nz/code/vim-juvenile.git'
" }}}
" Programming {{{
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
" }}}
" Language Syntax Support {{{
Plug 'fatih/vim-go'
Plug 'https://sanctum.geek.nz/code/vim-make-target.git'
Plug 'https://sanctum.geek.nz/code/vim-markdown-autoformat.git'
" }}}
" Language Syntax Support (disabled) {{{
" Plug 'tpope/vim-git'
" }}}
" Tmux integration (disabled) {{{
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'edkolev/tmuxline.vim'
" }}}
" Plugins {{{
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-abolish'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'AndrewRadev/splitjoin.vim', {'for':'go'}
Plug 'airblade/vim-gitgutter'
Plug 'kshenoy/vim-signature'
Plug 'mihais/vim-mark'
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/vim-easy-align'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'b4winckler/vim-angry'
" }}}

call plug#end()

" Configuration
" FZF {{{
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" FZF does not seem to correctly redraw its own background in Vim
if !has('nvim')
  let g:fzf_colors = { 'fg': ['fg', 'Normal'], 'bg': ['bg', 'Normal']}
endif
" }}}
" ack.vim {{{
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
" }}}
" gruvbox {{{
let g:gruvbox_invert_selection=0
" }}}
" gitgutter {{{
nmap [h <Plug>GitGutterPrevHunk
nmap ]h <Plug>GitGutterNextHunk
" }}}
" vim-mark {{{
nmap <Leader>1 <Plug>MarkSearchGroup1Next
nmap <Leader>2 <Plug>MarkSearchGroup2Next
nmap <Leader>3 <Plug>MarkSearchGroup3Next
nmap <Leader>4 <Plug>MarkSearchGroup4Next
nmap <Leader>5 <Plug>MarkSearchGroup5Next
nmap <Leader>6 <Plug>MarkSearchGroup6Next
" }}}
" undotree {{{
let g:undotree_WindowLayout = 2
let g:undotree_SetFocusWhenToggle = 1
" }}}
" vimwiki {{{
let g:vimwiki_hl_cb_checked = 2
let g:vimwiki_global_ext = 0

let wiki_personal = {}
let wiki_personal.path = '~/Documents/wikis/personal/'
let wiki_personal.syntax = 'markdown'
let wiki_personal.ext = '.md'
let wiki_personal.auto_toc = 1
let wiki_personal.auto_tags = 1

let wiki_work = {}
let wiki_work.path = '~/Documents/wikis/work/'
let wiki_work.syntax = 'markdown'
let wiki_work.ext = '.md'
let wiki_work.auto_toc = 1
let wiki_work.auto_tags = 1
let wiki_work.nested_syntaxes = {'go': 'go'}

let g:vimwiki_list = [wiki_personal, wiki_work]

" au Filetype vimwiki nmap <buffer> <LocalLeader>x <Plug>VimwikiToggleListItem
" au Filetype vimwiki nmap <buffer> <LocalLeader>j <Plug>VimwikiDiaryNextDay
" au Filetype vimwiki nmap <buffer> <LocalLeader>k <Plug>VimwikiDiaryPrevDay
" }}}
" vim-easy-align {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}}
" highlightedyank {{{
let g:highlightedyank_highlight_duration = 400
" }}}
" polyglot {{{
" I used to use the quite excellent sheerun/vim-polyglot, but it imposed some
" of its own defaults, which made it difficult to rely on the documentation of
" the used plugins.

" Used from this plugin:
"   * json
"   * go
"   * toml
"   * sql?
"   * sh?

" I prefer the builtin markdown support
let g:polyglot_disabled = ['markdown', 'go', 'git', 'yaml']

" Configuration of vim's builtin markdown syntax
let g:markdown_fenced_languages = ['bash=sh', 'go', 'sql', 'json']

" Required as long as I keep using vim_polyglot as it disables this by default
let g:vim_json_syntax_conceal = 1
" }}}

" vim: tw=80 fdm=marker:
