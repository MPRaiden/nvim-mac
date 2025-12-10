local set = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- window management
set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

-- copy current file
vim.keymap.set('n', '<C-c>', 'ggVG"+y', { noremap = true, silent = true })

-- exit insert mode
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true, silent = true })
