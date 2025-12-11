local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- window management
set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- copy current file
vim.keymap.set('n', '<C-c>', 'ggVG"+y', opts)

-- navigate splits
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
