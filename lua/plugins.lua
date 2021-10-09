local M = {}

function M.setup()
    local packer = require("packer")
    packer.startup(function(use)
        -- packer can manage itself as an optional plugin
        use({ "wbthomason/packer.nvim" })
        -- colorscheme
        -- use {'christianchiarulli/nvcode-color-schemes.vim'}
        use({
            "Th3Whit3Wolf/onebuddy",
            requires = { "tjdevries/colorbuddy.vim" },
            config = function()
                require("colorbuddy").colorscheme("onebuddy")
            end,
        })

        -- git
        use({
            "mhinz/vim-signify",
            config = function()
                require("ext.signify").setup()
            end,
        })
        use({
            "tpope/vim-fugitive",
            config = function()
                require("ext.fugitive").setup()
            end,
        })
        use({ "tpope/vim-rhubarb" })
        use({ "junegunn/gv.vim" })
        -- git blame
        use({
            "f-person/git-blame.nvim",
            config = function()
                require("ext.git-blame").setup()
            end,
        })

        -- treesitter
        use({
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate",
            config = function()
                require("ext.treesitter").setup()
            end,
        })
        -- multiple cursors
        use({ "terryma/vim-multiple-cursors" })

        -- emmet
        use({
            "mattn/emmet-vim",
            config = function()
                require("ext.emmet").setup()
            end,
        })

        -- markdown
        use({
            "tpope/vim-markdown",
            config = function()
                require("ext.markdown").setup()
            end,
        })
        use({ "iamcco/markdown-preview.nvim", run = ":call mkdp#util#install()" })
        use({ "christoomey/vim-tmux-navigator" })

        -- highlight yank
        use({ "machakann/vim-highlightedyank" })

        -- telescope for fuzzy find
        use({ "nvim-lua/popup.nvim" })
        use({ "nvim-lua/plenary.nvim" })
        use({ "nvim-telescope/telescope.nvim" })
        use({ "nvim-telescope/telescope-media-files.nvim" })

        -- tagbar
        use({ "preservim/tagbar" })
        -- go vim
        use({ "fatih/vim-go", run = ":GoUpdateBinaries" })

        -- rust
        use({ "rust-lang/rust.vim" })

        -- vim easy align
        use({
            "junegunn/vim-easy-align",
            config = function()
                require("ext.easy-align").setup()
            end,
        })

        -- bracey vim (a live server)
        use({ "turbio/bracey.vim", run = "npm install --prefix server" })

        -- lsp
        use({ "neovim/nvim-lspconfig" })
        use({ "kabouzeid/nvim-lspinstall" })
        use({
            "kosayoda/nvim-lightbulb",
            config = function()
                require("ext.lightbulb").setup()
            end,
        })
        use({ "onsails/lspkind-nvim" })
        use({ "hrsh7th/nvim-cmp" }) -- Autocompletion plugin
        use({ "hrsh7th/cmp-nvim-lsp" }) -- LSP source for nvim-cmp'
        use({ "hrsh7th/cmp-buffer" })
        use({ "L3MON4D3/LuaSnip" })
        use({ "saadparwaiz1/cmp_luasnip" })
        use({ "hrsh7th/vim-vsnip" })
        use({ "hrsh7th/cmp-vsnip" })

        -- filetype.nvim
        use({ "nathom/filetype.nvim" })
        -- snippet
        use({ "cstrap/python-snippets" })
        use({ "ylcnfrht/vscode-python-snippet-pack" })
        use({ "xabikos/vscode-javascript" })
        use({ "golang/vscode-go" })
        use({ "rust-lang/vscode-rust" })

        -- database
        use({ "kristijanhusak/vim-dadbod-completion" })
        use({ "tpope/vim-dadbod" })
        use({ "kristijanhusak/vim-dadbod-ui" })

        -- ts-rainbow
        use({
            "p00f/nvim-ts-rainbow",
            config = function()
                require("ext.ts-rainbow").setup()
            end,
        })

        -- colorizer
        use({
            "norcalli/nvim-colorizer.lua",
            config = function()
                require("ext.colorizer").setup()
            end,
        })

        -- auto-pairs
        use({ "windwp/nvim-autopairs" })

        -- nvim-web-devicons
        use({
            "kyazdani42/nvim-web-devicons",
            config = function()
                require("ext.devicon").setup()
            end,
        })

        -- barbar
        use({ "romgrk/barbar.nvim" })

        -- galaxyline
        use({ "glepnir/galaxyline.nvim" })

        -- nvim-tree
        use({
            "kyazdani42/nvim-tree.lua",
            require = "kyazdani42/nvim-web-devicons",
            config = function()
                require("ext.tree").setup()
            end,
        })
        -- dashboard
        use({
            "glepnir/dashboard-nvim",
            config = function()
                require("ext.dash").setup()
            end,
        })

        -- documentation generator
        use({
            "kkoomen/vim-doge",
            run = ":call doge#install()",
        })

        -- indent
        use({
            "lukas-reineke/indent-blankline.nvim",
            branch = "master",
            config = function()
                require("ext.indent").setup()
            end,
        })
        use({
            "folke/zen-mode.nvim",
            config = function()
                require("zen-mode").setup({
                    window = {
                        backdrop = 0.95,
                        width = 120, -- width of the Zen window
                        height = 1, -- height of the Zen window
                        options = {
                            signcolumn = "no",
                            number = true,
                            relativenumber = true,
                            cursorline = true,
                            cursorcolumn = false,
                            list = false,
                        },
                    },
                })
            end,
        })
        -- Comments
        use({
            "terrortylor/nvim-comment",
            event = "BufRead",
            config = function()
                local status_ok, nvim_comment = pcall(require, "nvim_comment")
                if not status_ok then
                    return
                end
                nvim_comment.setup()
            end,
        })
        -- Javascript / Typescript
        use({
            "jose-elias-alvarez/nvim-lsp-ts-utils",
            ft = {
                "javascript",
                "javascriptreact",
                "javascript.jsx",
                "typescript",
                "typescriptreact",
                "typescript.tsx",
            },
        })
        use({
            "mhartington/formatter.nvim",
            -- config = function ()
            --   require('extensions.formatters').setup()
            -- end,
        })

        use({
            "akinsho/toggleterm.nvim",
            config = function()
                require("ext.terminal").setup()
            end,
        })
        use({
            "numtostr/FTerm.nvim",
            config = function()
                require("FTerm").setup({
                    dimensions = {
                        height = 0.6,
                        width = 0.5,
                        x = 1,
                        y = 0,
                    },
                    border = "single",
                })
            end,
        })
        -- debugger
        use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
        use({ "Pocco81/DAPInstall.nvim" })
        use({
            "folke/which-key.nvim",
            config = function()
                require("which-key").setup()
            end,
        })

        use({
            "michaelb/sniprun",
            run = "bash ./install.sh",
            config = function()
                require("ext.sniprun.lua").setup()
            end,
        })
    end)
end

return M
