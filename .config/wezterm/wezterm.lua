local wezterm = require('wezterm')
local colors = require('lua/rose-pine-moon').colors()

return {
  check_for_updates = false,
  color_scheme = 'rose-pine-moon',
  colors = colors,
  default_cursor_style = 'BlinkingBar',

  hyperlink_rules = {
    -- These are the default rules. We have to re-specify them, as there's no way to extend the configuration.
    { regex = '\\b\\w+://[\\w.-]+\\.[a-z]{2,15}\\S*\\b', format = '$0', }, -- things that look like a standard URL
    { regex = [[\b\w+@[\w-]+(\.[\w-]+)+\b]], format = 'mailto:$0', }, -- email addresses
    { regex = [[\bfile://\S*\b]], format = '$1' }, -- file:// URLs

    -- Localhost URLs with ports.
    { regex = [[\bhttp://localhost:[\d]{4}\b]], format = '$0', }
  },

  -- Font.
  font = wezterm.font('JetBrains Mono'),
  font_size = 14,
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }, -- Disable ligatures.
  line_height = 1.45,

  -- Chrome.
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true
}
