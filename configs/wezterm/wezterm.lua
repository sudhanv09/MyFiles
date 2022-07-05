-- WezTerm
-- https://wezfurlong.org/wezterm/

local wezterm = require 'wezterm'
local act = wezterm.action

wezterm.on("update-right-status", function(window, pane)
  window:set_right_status(window:active_workspace())
end)

return {
  -- Smart tab bar [distraction-free mode]
  hide_tab_bar_if_only_one_tab = true,

  -- Disable updates
  check_for_updates = false,
  show_update_window = false,

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


  leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
  -- Keybindings
  keys = {

    -- Split Panes
    { key = "w", mods = "CTRL|SHIFT", action = wezterm.action.SplitPane { direction = "Right" } },
    { key = "v", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },

    -- Workspaces

    { key = "i", mods = "CTRL|SHIFT", action = act.SwitchToWorkspace },
    { key = "r", mods = "ALT", action = act.ShowLauncherArgs { flags = "FUZZY|WORKSPACES" } },
    { key = "l", mods = "CTRL|SHIFT", action = act.SwitchWorkspaceRelative(1) },
    { key = "h", mods = "CTRL|SHIFT", action = act.SwitchWorkspaceRelative(-1) },

    -- Custom Workspaces
    { key = "v", mods = "LEADER", action = wezterm.action { SwitchToWorkspace = { name = "vim" } } },
    { key = "m", mods = "LEADER", action = wezterm.action { SwitchToWorkspace = { name = "mpv" } } },
    { key = "p", mods = "LEADER", action = wezterm.action { SwitchToWorkspace = {
      name = "paru",
      spawn = { args = { "paru" } }
    } },
    }

  }
};
