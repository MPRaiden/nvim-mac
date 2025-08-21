return {
  'catppuccin/nvim',
  enabled = true,
  name = 'catppuccin',
  lazy = false, -- load right away (so your theme applies immediately)
  priority = 1000, -- high priority ensures it loads before other plugins
  config = function()
    require('catppuccin').setup {
      flavour = 'macchiato', -- one of: "latte", "frappe", "macchiato", "mocha"
      background = { -- :h catppuccin-background
        light = 'latte',
        dark = 'macchiato',
      },
      auto_integrations = true,
      transparent_background = true, -- disables background color
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = true, -- set terminal ANSI colors to theme palette
      dim_inactive = {
        enabled = false, -- dims inactive windows
        shade = 'dark',
        percentage = 0.15,
      },
      no_italic = true, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h catppuccin.highlights`)
        comments = { 'italic' },
        -- conditionals = { 'italic' },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      -- custom_highlights = function(colors)
      --   return {
      --     -- override highlight groups after colors are computed
      --     -- e.g.
      --     -- TelescopeBorder = { bg = colors.surface0, fg = colors.surface0 },
      --     -- TelescopePromptNormal = { bg = colors.crust },
      --   }
      -- end,
      integrations = {
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { 'undercurl' },
            warnings = { 'undercurl' },
          },
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    }

    vim.cmd.colorscheme 'catppuccin-macchiato'
  end,
}
