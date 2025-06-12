return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = {
      -- example customization
      view = { side = 'left', width = 40 },
      update_focused_file = { enable = true, update_root = true },

      filters = {
        dotfiles = false,
        git_ignored = false,
      },

      -- In normal mode, toggle nvim-tree with Ctrl+n
      vim.keymap.set('n', '<C-n>', '<cmd>:NvimTreeToggle<CR>', { desc = 'Toggle File Explorer' }),
    },
  },
  -- other plugin overrides...
}
