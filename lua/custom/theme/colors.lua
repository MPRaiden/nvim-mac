local M = {}

function M.apply()
  local colorbuddy = require 'colorbuddy'
  local Color = colorbuddy.Color
  local Group = colorbuddy.Group
  local c = colorbuddy.colors
  local g = colorbuddy.groups
  local s = colorbuddy.styles

  Color.new('white', '#f2e5bc')
  Color.new('red', '#cc6666')
  Color.new('pink', '#fef601')
  Color.new('green', '#99cc99')
  Color.new('yellow', '#f8fe7a')
  Color.new('blue', '#81a2be')
  Color.new('aqua', '#8ec07c')
  Color.new('cyan', '#8abeb7')
  Color.new('purple', '#8e6fbd')
  Color.new('violet', '#b294bb')
  Color.new('orange', '#de935f')
  Color.new('brown', '#a3685a')
  Color.new('lnum_fg', '#5f6a78') -- dimmer but visible grey
  Color.new('lnum_bg', '#181f2b') -- match background
  Color.new('cursor_lnum_fg', '#ffffff') -- bright line number
  Color.new('cursor_lnum_bg', '#2e3440') -- slightly darker background

  Color.new('seagreen', '#698b69')
  Color.new('turquoise', '#698b69')

  local background_string = '#181f2b'
  Color.new('background', background_string)
  Color.new('gray0', background_string)

  Group.new('LineNr', c.lnum_fg, c.lnum_bg)
  Group.new('CursorLineNr', c.cursor_lnum_fg, c.cursor_lnum_bg, s.bold)

  Group.new('Normal', c.superwhite, c.gray0)

  Group.new('@constant', c.orange, nil, s.none)
  Group.new('@function', c.yellow, nil, s.none)
  Group.new('@function.bracket', g.Normal, g.Normal)
  Group.new('@keyword', c.violet, nil, s.none)
  Group.new('@keyword.faded', g.nontext.fg:light(), nil, s.none)
  Group.new('@property', c.blue)
  Group.new('@variable', c.superwhite, nil)
  Group.new('@variable.builtin', c.purple:light():light(), g.Normal)
end

return M
