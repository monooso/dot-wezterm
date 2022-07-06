local wezterm = require('wezterm')

return {
  color_scheme = 'Builtin Solarized Light',
  default_cursor_style = 'BlinkingBar',

  -- Font.
  font = wezterm.font('JetBrainsMono Nerd Font'),
  font_size = 14,
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }, -- Disable ligatures.
  line_height = 1.45,

  -- Chrome.
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true
}
