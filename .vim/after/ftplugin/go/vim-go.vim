if ! exists(':GoBuild')
    finish
endif

let g:go_highlight_extra_types = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 0
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 0
let g:go_highlight_fields = 0
let g:go_highlight_build_constraints = 0
let g:go_highlight_generate_tags = 0
let g:go_highlight_string_spellcheck = 0
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 0
let g:go_highlight_variable_assignments = 0

let g:go_fmt_command = "goimports"

nnoremap <LocalLeader>gt :GoDeclsDir<cr>
nnoremap <LocalLeader>gb :GoBuild<CR>
