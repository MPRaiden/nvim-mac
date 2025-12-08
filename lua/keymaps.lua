local set = vim.keymap.set

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Disable arrow keys in normal mode
set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- window management
set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' }) -- split window vertically
set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

-- copy current file
vim.keymap.set('n', '<C-c>', 'ggVG"+y', { noremap = true, silent = true })
