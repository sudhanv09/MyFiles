local wezterm = require "wezterm"
local act = wezterm.action
local act_cb = wezterm.action_callback

local function keybind(mods, key, action)
  return { mods = mods, key = key, action = action }
end

local cfg = {}

cfg.disable_default_key_bindings = true

cfg.keys = {

}
