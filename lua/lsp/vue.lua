require("lspconfig").vuels.setup({
    cmd = { "node", DATA .. "lspinstall/vue/node_modules/.bin/vls", "--stdio" },
    on_attach = require("lsp").common_on_attach,
})