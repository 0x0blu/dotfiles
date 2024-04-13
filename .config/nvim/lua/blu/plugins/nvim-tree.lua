return {
  'nvim-tree/nvim-tree.lua',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    -- disable netrw by faking that it was already loaded
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local nvimtree = require 'nvim-tree'

    nvimtree.setup {
      view = { width = 35, relativenumber = true },
      renderer = { indent_markers = { enable = true } },
      filters = { custom = { '.DS_Store' } },
      git = { ignore = false },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>e', '<cmd>NvimTreeFindFileToggle<CR>', { desc = 'Toggle file explorer' })
  end,
}
