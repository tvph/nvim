vim.cmd('highlight VertSplit ctermbg=253')

vim.g.ale_sign_error = '❗️'
vim.g.ale_sign_warning = '●'
vim.g.ale_lint_on_save = 1
vim.g.ale_sign_column_always = 1
vim.g.ale_lint_on_enter = 1
vim.g.ale_echo_msg_error_str = 'E'
vim.g.ale_echo_msg_warning_str = 'W'
vim.g.ale_completion_enable = 1
vim.g.ale_set_highlights = 1
vim.cmd('let b:ale_linters = {\'python\': [\'flake8\', \'pylint\'], \'javascript\': [\'eslint\'], \'rust\': [\'analyzer\'], \'go\': [\'gopls\'], }')
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
vim.cmd('let g:ale_fixers = {\'*\': [\'remove_trailing_lines\', \'trim_whitespace\'], \'javascript\': [\'eslint\'], \'css\': [\'prettier\'], \'html\': [\'prettier\'], \'htmldjango\': [\'prettier\'], \'python\': [\'black\'] }')
vim.g.ale_fix_on_save = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_python_flake8_options = '--max-line-length=79 --ignore=E129,E501,E302,E265,E241,E305,E402,W503,E251,E225'
vim.g.ale_python_pylint_options = '-j 0 --max-line-length=79'
vim.g.ale_rust_cargo_use_check = 1
vim.g.ale_javascript_prettier_options = '--use-tabs'
vim.cmd('set statusline+=%=')
vim.cmd('set statusline+=\\ %{LinterStatus()}')
vim.cmd('let ccls_init_options = {\'clang\': { \'extraArgs\': [ \'-isystem/usr/local/include\', \'-isystem/Library/Developer/CommandLineTools/usr/bin/../include/c++/v1\', \'-isystem/Library/Developer/CommandLineTools/usr/lib/clang/12.0.0/include\', \'-isystem/Library/Developer/CommandLineTools/usr/include\', \'-isystem/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include\', \'-isystem/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/System/Library/Frameworks\'], \'resourceDir\': \'/Library/Developer/CommandLineTools/usr/lib/clang/12.0.0\' } }')
vim.cmd('let g:ale_cpp_ccls_init_options = ccls_init_options')
vim.cmd('let g:ale_c_ccls_init_options = ccls_init_options')
