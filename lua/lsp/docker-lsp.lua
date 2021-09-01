-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup {
  cmd = {DATA .. "/lspinstall/dockerfile/node_modules/.bin/docker-langserver", "--stdio"},
  -- cmd = {"docker-langserver", "--stdio"},
  on_attach = require'lsp'.common_on_attach,
  filetypes = { "Dockerfile", "dockerfile" },
	root_dir = vim.loop.cwd,
}
