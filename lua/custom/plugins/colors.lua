-- return {
--   'folke/tokyonight.nvim',
--   enabled = true,
--   lazy = false, -- load right away (so your theme applies immediately)
--   priority = 1000, -- high priority ensures it loads before other plugins
--   config = function()
--     require('tokyonight').setup {
--       style = 'night', -- one of: "storm", "moon", "night", or "day"
--       light_style = 'day', -- used when background is set to light
--       transparent = true, -- disables background color
--       terminal_colors = true, -- set terminal ANSI colors to theme palette
--       styles = {
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         sidebars = 'dark', -- background style for sidebar windows
--         floats = 'dark', -- same for floating windows
--       },
--       day_brightness = 0.3, -- light theme brightness between 0‑1
--       dim_inactive = false, -- dim inactive windows
--       lualine_bold = false, -- make section headers bold in lualine
--       cache = true, -- cache theme for performance
--       on_colors = function(colors)
--         -- override any palette colors
--         colors.error = '#ff5555'
--         colors.hint = colors.orange
--       end,
--       -- on_highlights = function(hl, c)
--       --   -- override highlight groups after colors are computed
--       --   hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
--       --   hl.TelescopePromptNormal = { bg = '#2d3149' }
--       -- end,
--       plugins = {
--         all = package.loaded.lazy == nil, -- auto-enable plugin support if not lazy-loading
--         -- plugin-specific toggles can be set here, e.g.:
--         -- telescope = true,
--       },
--     }
--     -- apply the colorscheme after setup
--     vim.cmd [[colorscheme tokyonight]]
--   end,
-- }

return {
  'navarasu/onedark.nvim',
  enabled = true,
  lazy = false, -- load immediately (adjust if you prefer lazy-loading)
  priority = 1000, -- ensure it loads early so colorscheme applies
  config = function()
    require('onedark').setup {
      style = 'cool', -- choose from "dark", "darker", "cool", "deep", "warm", "warmer", "light"
      transparent = true, -- remove background color (fixes issue with terminal & nvim color schemes coliding)
      term_colors = true, -- adapt terminal ANSI colors
      cmp_itemkind_reverse = false,
      toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' },
      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
      },
      lualine = {
        transparent = true,
      },
      -- colors = {
      --   -- override/add custom colors
      --   bright_orange = '#ff8800',
      --   green = '#00ffaa',
      -- },
      diagnostics = {
        darker = true,
        undercurl = true,
        background = true,
      },
    }
    -- apply the colorscheme AFTER setup
    vim.cmd.colorscheme 'onedark'
  end,
}
