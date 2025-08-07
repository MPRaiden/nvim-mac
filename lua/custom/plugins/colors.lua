return {
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
}
