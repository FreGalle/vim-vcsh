"
" File: plugins.vim
" Description: Plugins and configuration
"

" Initialisation {{{
set nocompatible
let g:plug_shallow = 0
" }}}

call plug#begin()

" Experimental {{{
" }}}
" General {{{
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" }}}
" Text Editing {{{
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kshenoy/vim-signature'
Plug 'machakann/vim-highlightedyank'
Plug 'mbbill/undotree'
Plug 'mihais/vim-mark'
Plug 'nelstrom/vim-visual-star-search'
Plug 'suan/vim-instant-markdown', {'for': ['markdown','vimwiki']}
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'https://sanctum.geek.nz/code/vim-big-file-options.git'
Plug 'https://sanctum.geek.nz/code/vim-cmdwin-ctrlc.git'
Plug 'https://sanctum.geek.nz/code/vim-diff-prune.git'
Plug 'https://sanctum.geek.nz/code/vim-digraph-search.git'
Plug 'https://sanctum.geek.nz/code/vim-equalalways-resized.git'
Plug 'https://sanctum.geek.nz/code/vim-foldlevelstart-stdin.git'
Plug 'https://sanctum.geek.nz/code/vim-insert-cancel.git'
Plug 'https://sanctum.geek.nz/code/vim-insert-suspend-hlsearch.git'
Plug 'https://sanctum.geek.nz/code/vim-insert-timeout.git'
Plug 'https://sanctum.geek.nz/code/vim-quickfix-auto-open.git'
Plug 'https://sanctum.geek.nz/code/vim-shebang-create-exec.git'
Plug 'https://sanctum.geek.nz/code/vim-strip-trailing-whitespace.git'
Plug 'https://sanctum.geek.nz/code/vim-uncap-ex.git'
" }}}
" Language Syntax Support {{{1
" Disabled {{{2
" Plug 'sheerun/vim-polyglot'
" Plug 'tpope/vim-git'
" 2}}}
Plug 'amadeus/vim-xml'
Plug 'cespare/vim-toml'
Plug 'mechatroner/rainbow_csv'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'stephpy/vim-yaml'
Plug 'uarun/vim-protobuf'
Plug 'https://sanctum.geek.nz/code/vim-make-target.git'
" 1}}}
" Programming {{{
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'airblade/vim-gitgutter'
Plug 'b4winckler/vim-angry'
Plug 'sjl/clam.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
" }}}
" Colorschemes {{{
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'
Plug 'https://sanctum.geek.nz/code/vim-juvenile.git'
" }}}
" Project Management {{{
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
" }}}
" Tmux integration (disabled) {{{
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'edkolev/tmuxline.vim'
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
" clam {{{
let g:clam_winwidth = 84
" }}}
" splitjoin {{{
" Don't set up the default mappings
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''
" }}}
" gruvbox {{{
let g:gruvbox_invert_selection=0
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
let wiki_personal.path = '~/Dropbox/Wikis/personal/'
let wiki_personal.syntax = 'markdown'
let wiki_personal.ext = '.md'
let wiki_personal.auto_toc = 1
let wiki_personal.auto_tags = 1

let wiki_work = {}
let wiki_work.path = '~/Dropbox/Wikis/work/'
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
" highlightedyank {{{
let g:highlightedyank_highlight_duration = 400
" }}}
" vim-matchup {{{
let g:matchup_matchparen_enabled = 0
" }}}
" vim-json {{{
" The syntax concealment is generally too resource-intensive
let g:vim_json_syntax_conceal = 0
" }}}
" vim-markdown {{{
let g:vim_markdown_folding_disabled = 1
" }}}
" vim-instant-markdown {{{
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_python = 1
" }}}

" vim: tw=80 fdm=marker:
