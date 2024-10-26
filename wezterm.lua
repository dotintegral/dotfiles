local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Everforest Dark Hard (Gogh)'
config.font = wezterm.font "Fira Code"

config.font_size = 11.5

config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}

return config
