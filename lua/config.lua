vim.o.syntax = "on"
vim.o.guifont = "FiraCode\\ Nerd\\ Font:h13"
-- vim.g.mapleader = ","
vim.o.hidden = true  -- keep open multiple buffers
vim.o.title = true
vim.o.filetype = "on"
vim.cmd('filetype plugin indent on')
vim.cmd('set nocompatible')
vim.o.fileencoding = "utf-8"
vim.o.conceallevel = 0  -- to see `` in markdown files
vim.bo.smartindent = true
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.wrap = false   -- display long lines as just one
vim.o.mouse = "a"
vim.o.showmode = true
vim.cmd('set nobackup')
vim.cmd('set noswapfile')
vim.cmd("set showcmd")
vim.o.cmdheight = 1
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.showmatch = true
vim.bo.expandtab = true  -- convert tabs to spaces
vim.o.showtabline = 2
vim.o.t_Co = "256"
vim.cmd('set ts=4')
vim.cmd('set sw=4')
vim.o.ruler = true
vim.o.updatetime = 300  -- faster completion
vim.o.timeoutlen = 500  -- timeout to 1s
vim.cmd('set whichwrap+=<,>,[,],h,l')
vim.cmd('set shortmess+=c')
vim.cmd('set iskeyword+=-')  -- treat dash seperate words as word text object
vim.cmd('set laststatus=2')
vim.cmd('set undolevels=1000')  -- undo history
vim.cmd('set lazyredraw')
vim.cmd('set hlsearch')
vim.cmd('set incsearch')
vim.cmd('set signcolumn=yes')
vim.cmd('set ttyfast')
vim.cmd('set errorformat=%f:%l:\\ %m')
vim.cmd('set modifiable')
vim.wo.relativenumber = true
vim.cmd('set clipboard=unnamedplus')
vim.cmd('set nofoldenable')
vim.cmd('set rtp+=~/.fzf')
vim.cmd('set rtp+=/usr/local/opt/fzf')
vim.cmd[[ set termguicolors ]]
vim.cmd[[ set smarttab ]]

-- config ts and sw for special files
vim.cmd('autocmd BufRead,BufNewFile *.py setlocal expandtab tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79')
vim.cmd('autocmd BufRead,BufNewFile *.html,*.js,*.ts,*.tsx,*.jsx,*.css,*.scss,*.sass,*.json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2')
vim.cmd('autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=8 shiftwidth=8')


-- global
O = {
    auto_complete = true,
    colorscheme = 'nvcode',
    lua = {
        -- @usage can be 'lua-format'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = '',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    tsserver = {
        -- @usage can be 'eslint'
        linter = 'eslint',
        -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
    json = {
        -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },
     python = {
        linter = 'flake8',
        -- @usage can be 'yapf', 'black'
        formatter = 'yapf',
        autoformat = false,
        isort = false,
        diagnostics = {virtual_text = true, signs = true, underline = true}
    },

}

DATA = vim.fn.stdpath('data')
CACHE = vim.fn.stdpath('cache')

if vim.fn.has('nvim') == 1 then
    --
end
