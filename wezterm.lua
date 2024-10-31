local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Everforest Dark Hard (Gogh)'
config.font = wezterm.font "Fira Code"

config.font_size = 11.5

config.enable_tab_bar = false
config.freetype_load_target = "HorizontalLcd"

config.font_rules = {
  {
    italic = false,
    intensity = "Bold",
    font = wezterm.font {
      family = "Fira Code",
      weigth = "Bold",
    },
  },
  {
    italic = false,
    intensity = "Normal",
    font = wezterm.font {
      family = "Fira Code",
      weigth = "Bold",
    },
  },
}

config.keys = {
  {
    key = 'r',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ReloadConfiguration,
  },
}

return config
