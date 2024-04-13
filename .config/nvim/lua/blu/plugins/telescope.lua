return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
    'folke/todo-comments.nvim',
  },
  config = function()
    local telescope = require 'telescope'

    telescope.setup {
      defaults = {
        path_display = { 'smart' },
      },
      pickers = { oldfiles = { cwd_only = true } },
    }

    telescope.load_extension 'fzf'

    local keymap = vim.keymap

    keymap.set('n', '<leader>fa', '<cmd>Telescope find_files<CR>', { desc = 'Find file' })
    keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { desc = 'Find recent file' })
    keymap.set('n', '<leader>fg', '<cmd>Telescope git_files<CR>', { desc = 'Find git tracked file' })

    keymap.set('n', '<leader>/', '<cmd>Telescope live_grep<CR>', { desc = 'Find a string in files' })
    keymap.set('n', '<leader>fs', '<cmd>Telescope grep_string<CR>', { desc = 'Find string under cursor' })
    keymap.set('x', '<leader>fs', '<cmd>Telescope grep_string<CR>', { desc = 'Find selection' })
    keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<cr>', { desc = 'Find todos' })

    keymap.set('n', '<leader>b', '<cmd>Telescope buffers<CR>', { desc = 'List buffers' })
  end,
}
