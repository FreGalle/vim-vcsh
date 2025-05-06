"
" File: plugins.vim
" Description: Plugins and configuration
"

" Initialisation {{{
packadd minpac
call minpac#init({'status_open':'vertical'}) "
" }}}

" Experimental {{{
call minpac#add('https://sanctum.geek.nz/code/vim-spellfile-local.git', {'depth': 0})
" }}}
" General {{{
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('gcmt/taboo.vim')
" }}}
" Text Editing {{{
call minpac#add('junegunn/goyo.vim')
call minpac#add('junegunn/limelight.vim')
call minpac#add('junegunn/vim-easy-align')
call minpac#add('kshenoy/vim-signature')
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('mbbill/undotree')
call minpac#add('qadzek/link.vim')
call minpac#add('inkarkat/vim-ingo-library', {'rev': 'stable'})
call minpac#add('inkarkat/vim-mark', {'rev': 'stable'})
call minpac#add('nelstrom/vim-visual-star-search')
call minpac#add('suan/vim-instant-markdown', {'type': 'opt'})
call minpac#add('tpope/vim-abolish')
call minpac#add('tpope/vim-obsession')
call minpac#add('tpope/vim-repeat')
call minpac#add('tpope/vim-speeddating')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-vinegar')
call minpac#add('wellle/targets.vim')
call minpac#add('https://sanctum.geek.nz/code/vim-big-file-options.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-cmdwin-ctrlc.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-cursorline-current.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-diff-prune.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-digraph-search.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-equalalways-resized.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-foldlevelstart-stdin.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-insert-cancel.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-insert-suspend-hlsearch.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-insert-timeout.git', {'depth': 0})
" call minpac#add('https://sanctum.geek.nz/code/vim-quickfix-auto-open.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-shebang-create-exec.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-strip-trailing-whitespace.git', {'depth': 0})
call minpac#add('https://sanctum.geek.nz/code/vim-uncap-ex.git', {'depth': 0})
" }}}
" Language Syntax Support {{{1
" Disabled {{{2
" call minpac#add('sheerun/vim-polyglot')
" call minpac#add('tpope/vim-git')
" 2}}}
call minpac#add('amadeus/vim-xml')
call minpac#add('cespare/vim-toml', {'rev': 'main'})
call minpac#add('mechatroner/rainbow_csv')
call minpac#add('ekalinin/Dockerfile.vim')
call minpac#add('elzr/vim-json')
call minpac#add('fatih/vim-go', {'do': ':GoUpdateBinaries'})
call minpac#add('plasticboy/vim-markdown')
call minpac#add('stephpy/vim-yaml')
call minpac#add('uarun/vim-protobuf')
call minpac#add('https://sanctum.geek.nz/code/vim-make-target.git', {'depth': 0})
" 1}}}
" Programming {{{
call minpac#add('AndrewRadev/linediff.vim')
call minpac#add('AndrewRadev/splitjoin.vim')
call minpac#add('andymass/vim-matchup')
call minpac#add('airblade/vim-gitgutter', {'rev': 'main'})
call minpac#add('sjl/clam.vim')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-surround')
call minpac#add('rbong/vim-flog')
call minpac#add('github/copilot.vim')
call minpac#add('nvim-lua/plenary.nvim')
call minpac#add('CopilotC-Nvim/CoPilotChat.nvim')
call minpac#add('sindrets/diffview.nvim')
call minpac#add('crusj/structrue-go.nvim')
" }}}
" Colorschemes {{{
call minpac#add('sjl/badwolf')
call minpac#add('morhetz/gruvbox')
call minpac#add('tomasr/molokai')
call minpac#add('Lokaltog/vim-distinguished')
call minpac#add('fenetikm/falcon')
call minpac#add('haishanh/night-owl.vim')
call minpac#add('rakr/vim-one')
call minpac#add('KeitaNakamura/neodark.vim')
call minpac#add('https://sanctum.geek.nz/code/vim-juvenile.git', {'depth': 0})
call minpac#add('alexxGmZ/e-ink.nvim')
call minpac#add('folke/tokyonight.nvim')
call minpac#add('catppuccin/nvim', {'name': 'catppuccin'})
" }}}
" Project Management {{{
call minpac#add('vimwiki/vimwiki')
" }}}
" Tmux integration (disabled) {{{
" call minpac#add('christoomey/vim-tmux-navigator')
" call minpac#add('edkolev/tmuxline.vim')
" }}}

" Configuration
" FZF {{{
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS = '--reverse'

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
let g:vimwiki_automatic_nested_syntaxes = 1

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
let g:vim_markdown_folding_disabled = 0
" }}}
" vim-instant-markdown {{{
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_python = 1
" }}}
" vim-projectionist {{{
let g:projectionist_heuristics = json_decode(join(readfile(expand('~/.vim/projections.json'))))
" }}}
" vim-rhubarb {{{
let g:github_enterprise_urls = ['https://git.hubteam.com']
" }}}
" taboo.vim {{{
let g:taboo_tab_format = ' [%N] %f%m '
let g:taboo_renamed_tab_format = ' [%N] %l%m '
" }}}
" CopilotChat.nvim {{{
lua << EOF
require("CopilotChat").setup {
  mappings = {
    complete = {
      insert = '<S-Tab>',
    }
  }
}
EOF
" }}}
" qadzek/link.vim {{{
let g:link_enabled_filetypes = [ 'markdown', 'gitcommit', 'vimwiki' ]
" }}}


" vim: tw=80 fdm=marker:
