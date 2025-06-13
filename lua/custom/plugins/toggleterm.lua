return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<leader>t]],
      direction = 'horizontal',
      size = function(term)
        if term.direction == 'horizontal' then
          return math.floor(vim.o.lines * 0.3)
        end
      end,
      start_in_insert = true,
      insert_mappings = false,
      persist_mode = false,
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)

      vim.api.nvim_create_autocmd({ 'TermOpen', 'BufEnter' }, {
        pattern = 'term://*toggleterm#*',
        callback = function()
          vim.cmd 'startinsert'

          -- map <Esc><Esc> in terminal mode to switch to normal mode
          vim.api.nvim_buf_set_keymap(0, 't', '<Esc><Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

          -- keep <leader>t mapped inside terminal for toggling
          vim.api.nvim_buf_set_keymap(0, 't', '<leader>t', '<C-\\><C-n><Cmd>ToggleTerm<CR>', { noremap = true, silent = true })
        end,
      })
    end,
  },
}
