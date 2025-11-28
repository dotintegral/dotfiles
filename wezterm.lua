local wezterm = require("wezterm")

local config = wezterm.config_builder()
local wallpaper = (os.getenv("HOME") or "") .. "/style/wallpapers/terminal-background.png"

config.font = wezterm.font("Fira Code")

config.font_size = 11.5

config.colors = {
	foreground = "#d3c6aa",
	background = "#252d34",
	ansi = {
		"#475258", -- color0
		"#e67e80", -- color1
		"#a7c080", -- color2
		"#dbbc7f", -- color3
		"#7fbbb3", -- color4
		"#d699b6", -- color5
		"#83c092", -- color6
		"#d3c6aa", -- color7
	},
	brights = {
		"#a7afa1", -- color8
		"#e56058", -- color9
		"#90a030", -- color10
		"#d5a236", -- color11
		"#5392c0", -- color12
		"#d06fb6", -- color13
		"#58a47e", -- color14
		"#eeebde", -- color15
	},
}

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
		hsb = { brightness = 1.2, saturation = 1.1, hue = 1.1 },
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
