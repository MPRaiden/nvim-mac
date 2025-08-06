return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    enabled = false,
    priority = 10000,
    lazy = false,
    config = function()
      require('rose-pine').setup {
        variant = 'moon',
        dark_variant = 'moon', -- required: expects a string
        dim_inactive_windows = false, -- required: boolean
        extend_background_behind_borders = false, -- required: boolean

        enable = {
          terminal = true,
          legacy_highlights = true,
          migrations = true,
        },

        groups = {}, -- required
        highlight_groups = {}, -- required

        styles = {
          bold = true,
          italic = false,
        },

        before_highlight = function() -- required: at least a placeholder function
          -- no-op
        end,
      }
      vim.cmd.colorscheme 'rose-pine'
    end,
  },
  {
    'folke/tokyonight.nvim',
    enabled = true,
    lazy = false,
    priority = 10000,
    opts = {
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
      sidebars = { 'qf', 'help' },
    },
    config = function()
      vim.cmd.colorscheme 'tokyonight-night' -- night, storm, day, moon
    end,
  },
  {
    'savq/melange-nvim',
    enabled = false,
    lazy = false,
    priority = 10000,
    opts = {
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
      },
      sidebars = { 'qf', 'help' },
    },
    config = function()
      vim.cmd.colorscheme 'melange'
    end,
  },
}
