return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'tiagovla/scope.nvim',
  },
  config = function()
    -- Enable true colour support
    vim.opt.termguicolors = true

    -- Bufferline setup
    require('bufferline').setup {
      options = {
        mode = 'buffers', -- show buffers instead of tabs
        numbers = 'ordinal',
        diagnostics = 'nvim_lsp',
        separator_style = 'slant',
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            highlight = 'Directory',
            text_align = 'left',
          },
        },
        diagnostics_indicator = function(count, level)
          local icon = level:match 'error' and '' or ''
          return ' ' .. icon .. count
        end,
      },
    }

    -- Scope.nvim setup to scope buffers per tab
    require('scope').setup {}

    -- Keymaps for buffer navigation & management
    local map = vim.keymap.set
    -- Cycle through buffers
    map('n', '<Tab>', '<CMD>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
    map('n', '<S-Tab>', '<CMD>BufferLineCyclePrev<CR>', { desc = 'Prev buffer' })
    -- Close buffer
    map('n', '<A-q>', '<CMD>bd<CR>', { desc = 'Close buffer' })
    -- Jump directly to buffers 1–9
    for i = 1, 9 do
      map('n', tostring(i), function()
        vim.cmd('buffer ' .. i)
      end, { desc = 'Go to buffer ' .. i })
    end
  end,
}
