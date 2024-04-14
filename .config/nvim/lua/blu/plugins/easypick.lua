return {
  'axkirillov/easypick.nvim',
  dependencies = 'nvim-telescope/telescope.nvim',
  config = function()
    local easypick = require 'easypick'

    easypick.setup {
      pickers = {
        {
          name = 'git_uncommitted',
          command = '(git ls-files --others --modified --exclude-standard && git diff --cached --name-only --relative) | sort -u',
          previewer = easypick.previewers.default(),
        },
      },
    }

    local keymap = vim.keymap

    keymap.set('n', '<leader>fc', '<cmd>Easypick git_uncommitted<CR>', { desc = 'List git uncommitted files' })
  end,
}
