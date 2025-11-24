return {
  {
    'vague-theme/vague.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    enabled = true,
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require('vague').setup {
        transparent = true,
        bold = true,
        italic = false,
        -- optional configuration here
      }
      vim.cmd 'colorscheme vague'
    end,
  },

  {
    'sainnhe/sonokai',
    name = 'sonokai',
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      -- Styles: 'default', 'atlantis', 'andromeda', 'shusia', 'maia', 'espresso'
      vim.g.sonokai_style = 'andromeda'
      vim.g.sonokai_better_performance = 0
      -- Transparency: 0 = none, 1 = normal, 2 = all (includes status line)
      vim.g.sonokai_transparent_background = 1
      vim.cmd.colorscheme 'sonokai'
    end,
  },
}
