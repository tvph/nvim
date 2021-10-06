-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
local sumneko_root = DATA .. "/lspinstall/lua"
local sumneko_binary = sumneko_root .. "/sumneko-lua-language-server"

local M = {}

function M.setup()
    require("lspconfig").sumneko_lua.setup({
        cmd = { sumneko_binary, "-E", sumneko_root .. "/sumneko-lua/extension/server/main.lua" },
        on_attach = require("lsp").common_on_attach,
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = "LuaJIT",
                    -- Setup your lua path
                    path = vim.split(package.path, ";"),
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = { "vim" },
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = {
                        [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                        [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
                    },
                    maxPreload = 10000,
                },
            },
        },
    })
end

return M
