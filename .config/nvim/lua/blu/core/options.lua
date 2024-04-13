local opt = vim.opt

-- show line numbers relative to current line
opt.relativenumber = true
opt.number = true

-- use 2 spaces for indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- smart case searching
opt.ignorecase = true
opt.smartcase = true

-- use xterm-256color capabilities
opt.termguicolors = true
opt.background = 'light'
opt.signcolumn = 'yes'
opt.cursorline = true

-- use system clipboard
opt.clipboard:append 'unnamedplus'

-- split windows to the right and to the bottom
opt.splitright = true
opt.splitbelow = true

-- turn off swap files
opt.swapfile = false
