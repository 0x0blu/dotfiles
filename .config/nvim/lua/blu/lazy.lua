local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  }
end

-- add lazy to runtime path
vim.opt.rtp:prepend(lazypath)

local lazy = require 'lazy'

lazy.setup({ { import = 'blu.plugins' }, { import = 'blu.plugins.lsp' } }, {
  change_detection = { notify = false },
})
