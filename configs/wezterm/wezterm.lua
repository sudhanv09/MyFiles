-- WezTerm
-- https://wezfurlong.org/wezterm/

local wezterm = require 'wezterm'

return {
  -- Smart tab bar [distraction-free mode]
  hide_tab_bar_if_only_one_tab = true,

  color_scheme = 'Gruvbox Dark',

  window_background_opacity = 0.99,

  font = wezterm.font('Fantasque Sans Mono'),
  font_size = 13.0,

  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

  default_cursor_style = 'BlinkingBar',

  -- Enable CSI u mode
  enable_csi_u_key_encoding = true,

  -- exit
  exit_behavior = "Close";
};
