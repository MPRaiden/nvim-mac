return {
  'echasnovski/mini.ai',
  enabled = false,
  version = '*',
  event = 'VeryLazy', -- Optional: load lazily
  config = function()
    require('mini.ai').setup {}
  end,
}
