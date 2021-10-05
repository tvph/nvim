local M = {}
function M.setup()
  require'nvim-treesitter.configs'.setup {
    autopairs = {
      enable = false
    },
    indent = {
      enable = false
    },
    ensure_installed = {
      "javascript",
      "dockerfile",
      "scss",
      "julia",
      "toml",
      "rst",
      "html",
      "css",
      "bash",
      "lua",
      "c",
      "cpp",
      "python",
      "rust",
      "go",
      "json",
      "tsx",
      "typescript",
      "regex",
      "vue",
      "svelte",
    },
	  ignore_install = {"haskell", "hcl"},
    highlight = {
      enable = true,
    },
    rainbow = {
      enable = true,
      extended_mode = true,
    },
    autotag = {
      enable = true
    },
    context_commentstring = {
      enable = true
    },
    matchup = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    playground = {
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false, -- Whether the query persists across vim sessions
    },
    textobjects = {
      select = {
        enable = true,

        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,

        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]]"] = "@class.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]["] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[["] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[]"] = "@class.outer",
        },
      },
      swap = {
        enable = true,
        swap_next = { ["<Leader>rx"] = "@parameter.inner" },
        swap_previous = { ["<Leader>rX"] = "@parameter.inner" },
      },
      lsp_interop = {
        enable = true,
        border = "none",
        peek_definition_code = {
          ["df"] = "@function.outer",
          ["dF"] = "@class.outer",
        },
      },
    },
    textsubjects = {
      enable = true,
      keymaps = {
        ["."] = "textsubjects-smart",
        [";"] = "textsubjects-container-outer",
      },
    },
  }
end

return M
