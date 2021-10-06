-- npm install -g typescript typescript-language-server
local M = {}
local util = require("lspconfig/util")
function M.setup()
    require("lspconfig").tsserver.setup({
        cmd = { DATA .. "/lspinstall/typescript/node_modules/.bin/typescript-language-server", "--stdio" },

        filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
        },
        on_attach = require("lsp").tsserver_on_attach,
        -- on_attach = require'lsp'.common_on_attach,
        root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
        settings = { documentFormatting = true },
        handlers = {
            ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
                virtual_text = true,
                signs = true,
                underline = true,
                update_in_insert = true,
            }),
        },
    })
end

return M