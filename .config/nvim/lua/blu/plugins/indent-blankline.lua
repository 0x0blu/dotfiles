return {
  'lukas-reineke/indent-blankline.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  main = 'ibl',
  opts = {
    whitespace = { highlight = { 'CursorColumn', 'Whitespace' }, remove_blankline_trail = false },
    scope = { enabled = false },
  },
}
