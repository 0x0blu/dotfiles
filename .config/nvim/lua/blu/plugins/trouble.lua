return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'folke/todo-comments.nvim' },
  keys = {
    { '<leader>jj', '<cmd>TroubleToggle<CR>', desc = 'Toggle trouble diagnostics' },
    { '<leader>ja', '<cmd>TroubleToggle workspace_diagnostics<CR>', desc = 'Open trouble workspace diagnostics' },
    { '<leader>jf', '<cmd>TroubleToggle document_diagnostics<CR>', desc = 'Open trouble document diagnostics' },
  },
}
