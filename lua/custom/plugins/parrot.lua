return {
  'frankroeder/parrot.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('parrot').setup {
      providers = {
        gemini = {
          api_key = vim.env.GEMINI_API_KEY,
          system_message_template = 'Please Keep your responses brief and to the point.',
        },
        -- Additional providers can be added here if needed
      },
      toggle_target = 'split', -- Determines where the chat window appears
    }

    -- Key mapping to start a new chat
    vim.keymap.set('n', '<leader>pn', ':PrtChatNew<CR>', { desc = '[P]arrot [C]hat New' })
    vim.keymap.set('n', '<leader>pr', ':PrtChatRespond<CR>', { desc = '[P]arrot [R]espond' })
    vim.keymap.set('n', '<leader>pc', ':PrtChatToggle<CR>', { desc = '[P]arrot [T]oogle' })
  end,
}
