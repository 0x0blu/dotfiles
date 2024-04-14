return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    attach_to_untracked = true,
    current_line_blame = true,
    current_line_blame_opts = { delay = 0 },
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      map('n', ']c', gs.next_hunk, 'Next change')
      map('n', '[c', gs.prev_hunk, 'Previous change')

      map('n', '<leader>cs', gs.stage_hunk, 'Stage change')
      map('n', '<leader>cr', gs.reset_hunk, 'Reset change')

      map('v', '<leader>cs', function()
        gs.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, 'Stage change')

      map('v', '<leader>cr', function()
        gs.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
      end, 'Reset change')

      map('n', '<leader>cas', gs.stage_buffer, 'Stage all changes')
      map('n', '<leader>car', gs.reset_buffer, 'Reset all changes')

      map('n', '<leader>cu', gs.undo_stage_hunk, 'Undo stage change')

      map('n', '<leader>cp', gs.preview_hunk, 'Preview change')

      map('n', '<leader>cb', function()
        gs.blame_line { full = true }
      end, 'Blame line')

      map('n', '<leader>clb', gs.toggle_current_line_blame, 'Toggle line blame')

      map('n', '<leader>cd', gs.diffthis, 'Diff this')
    end,
  },
}
