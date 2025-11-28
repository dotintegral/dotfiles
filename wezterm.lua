local wezterm = require("wezterm")

local config = wezterm.config_builder()
local wallpaper = (os.getenv("HOME") or "") .. "/style/wallpapers/terminal-background.png"

config.color_scheme = "Everforest Dark Hard (Gogh)"
config.font = wezterm.font("Fira Code")

config.font_size = 11.5

config.window_background_opacity = 1.0
config.text_background_opacity = 1.0
config.background = {
	-- Wallpaper layer, darkened but not transparent
	{
		source = { File = wallpaper },
		width = "Cover",
		height = "Cover",
		horizontal_align = "Center",
		vertical_align = "Middle",
		repeat_x = "NoRepeat",
		repeat_y = "NoRepeat",
		opacity = 1.0,
	},
	-- Top tint to dim the wallpaper while keeping the window opaque
	{
		source = { Color = "#252d34" },
		width = "100%",
		height = "100%",
		opacity = 0.85,
	},
}

config.enable_tab_bar = false
config.freetype_load_target = "HorizontalLcd"

config.font_rules = {
	{
		italic = false,
		intensity = "Bold",
		font = wezterm.font({
			family = "Fira Code",
			weight = "Bold",
		}),
	},
	{
		italic = false,
		intensity = "Normal",
		font = wezterm.font({
			family = "Fira Code",
			weight = "DemiBold",
		}),
	},
}

config.keys = {
	{
		key = "r",
		mods = "CMD|SHIFT",
		action = wezterm.action.ReloadConfiguration,
	},
}

return config
