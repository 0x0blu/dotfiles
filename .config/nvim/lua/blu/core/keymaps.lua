vim.g.mapleader = ' '

local keymap = vim.keymap

keymap.set('n', '<leader>qa', '<cmd>qa<CR>', { desc = 'Quit all windows' })
keymap.set('n', '<leader>q1', '<cmd>q!<CR>', { desc = 'Close current window without saving' })

keymap.set('n', '<leader>w', '<C-w>', { desc = 'Enter window management mode' })
keymap.set('n', '<C-j>', '<cmd>resize +1<CR>', { desc = 'Increase window height' })
keymap.set('n', '<C-k>', '<cmd>resize -1<CR>', { desc = 'Decrease window height' })
keymap.set('n', '<C-l>', '<cmd>vertical resize +2<CR>', { desc = 'Increase window width' })
keymap.set('n', '<C-h>', '<cmd>vertical resize -2<CR>', { desc = 'Decrease window width' })

keymap.set('n', '<leader>tn', '<cmd>tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })
keymap.set('n', '<leader>tq', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tj', '<cmd>tabnext<CR>', { desc = 'Go to next tab' })
keymap.set('n', '<leader>tk', '<cmd>tabprevious<CR>', { desc = 'Go to previous tab' })
keymap.set('n', '<leader>tl', '<cmd>+tabmove<CR>', { desc = 'Move tab to the right' })
keymap.set('n', '<leader>th', '<cmd>-tabmove<CR>', { desc = 'Move tab to the left' })

-- use capital U for redo
keymap.set('n', 'U', '<C-r>')

-- don't add to clipboard by default, unless prefixed by a leader
keymap.set({ 'n', 'x' }, 'x', '"_x')
keymap.set({ 'n', 'x' }, 'd', '"_d')
keymap.set({ 'n', 'x' }, 'c', '"_c')
keymap.set({ 'n', 'x' }, 'r', '"_r')
keymap.set({ 'n', 'x' }, '<leader>x', 'x')
keymap.set({ 'n', 'x' }, '<leader>d', 'd')
keymap.set({ 'n', 'x' }, '<leader>c', 'c')
keymap.set({ 'n', 'x' }, '<leader>r', 'r')

keymap.set('n', '<leader>nh', '<cmd>nohl<CR>', { desc = 'Clear search highlights' })

keymap.set('n', '<leader>=', '<C-a>', { desc = 'Increment number' })
keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })
