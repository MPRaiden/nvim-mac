return {
  {
    'folke/tokyonight.nvim',
    enabled = false,
    lazy = false,
    priority = 1000,
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
      if vim.g.neovide then
        vim.g.neovide_padding_top = 30
      end

      vim.cmd.colorscheme 'tokyonight-night' -- night, storm, day
    end,
  },
  {
    'navarasu/onedark.nvim',
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'deep', -- dark, darker, cool, deep, warm, warmer
        code_style = {
          comments = 'none',
        },
      }

      if vim.g.neovide then
        vim.g.neovide_padding_top = 30
      end
      vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    enabled = false,
    priority = 1000,
    lazy = false,
    config = function()
      require('rose-pine').setup {
        variant = 'main', -- main, moon, dawn
        styles = {
          bold = false,
          italic = false,
        },
      }

      if vim.g.neovide then
        vim.g.neovide_padding_top = 30
        --vim.g.neovide_opacity = 0.9
      end

      vim.cmd.colorscheme 'rose-pine'
    end,
  },
}
