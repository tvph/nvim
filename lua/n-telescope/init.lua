local actions = require('telescope.actions')

require('telescope').load_extension('media_files')
require('telescope').setup {
  defaults = {
    file_ignore_patterns = {"node_modules", ".venv", "assets", "target"},
    find_command = {'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'},
    entry_prefix = "  ",
    prompt_prefix = "> ",
    selection_caret = " ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      width = 0.8,
      prompt_position = "top",
      preview_cutoff = 120,
      horizontal = {
        mirror = false
      },
      vertical = {
        mirror = false
      }
    },
    file_sorter = require'telescope.sorters'.get_fuzzy_file,
    generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = {},
    winblend = 0,
    border = {},
    borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'},
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        -- To disable a keymap, put [map] = false
        -- So, to not map "<C-n>", just put
        -- ["<c-x>"] = false,
        ["<esc>"] = actions.close,

        -- Otherwise, just set the mapping to the function that you want it to be.
        -- -- ["<C-i>"] = actions.select_horizontal,

        -- Add up multiple actions
        ["<CR>"] = actions.select_default + actions.center

        -- You can perform as many actions in a row as you like
        -- ["<CR>"] = actions.select_default + actions.center + my_cool_custom_action,
      },
      n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous
        -- ["<esc>"] = actions.close,
        -- -- ["<C-i>"] = my_cool_custom_action,
      }
    }
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = false,
    }
  }
}
vim.cmd('nnoremap <Leader>f <cmd>Telescope find_files<cr>')
vim.cmd('nnoremap <Leader>g <cmd>Telescope live_grep<cr>')
vim.cmd('nnoremap <Leader>fb <cmd>Telescope buffers<cr>')
vim.cmd('nnoremap <Leader>fh <cmd>Telescope help_tags<cr>')
vim.cmd('autocmd User TelescopePreviewerLoaded setlocal wrap')
