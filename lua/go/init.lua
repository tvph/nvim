vim.cmd('autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=8 shiftwidth=8')
vim.g.go_highlight_build_constraints = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_methods = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_structs = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_function_parameters = 1
vim.g.go_auto_sameids = 1
vim.g.go_fmt_command = 'gomimports'
vim.g.go_fmt_autosave = 1
vim.g.go_auto_type_info = 1
vim.g.go_def_mode = 'godef'
vim.g.go_info_mode = 'gopls'
vim.g.go_decls_includes = 'func'
vim.g.go_fmt_options = '-tabwidth=8'
vim.g.go_addtags_transform = 'camelcase'

