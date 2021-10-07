local M = {}

function M.setup()
    vim.cmd("set updatetime=100")
    vim.cmd("let g:signify_sign_add='+'")
    vim.cmd("let g:signify_sign_delete='_'")
    vim.cmd("let g:signify_sign_delete_first_line='‾'")
    vim.cmd("let g:signify_sign_change='~'")
    vim.cmd("let g:signify_sign_show_count=0")
    vim.cmd("let g:signify_sign_show_text=1")

    vim.cmd("map <leader>gj <plug>(signify-next-hunk)")
    vim.cmd("nmap <leader>gk <plug>(signify-prev-hunk)")
    vim.cmd("nmap <leader>gJ 9999<leader>gJ")
    vim.cmd("nmap <leader>gK 9999<leader>gk")
    vim.cmd("nmap <leader>gH :SignifyToggleHighlight<cr>")
end

return M
