-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.keys = {
	-- For word jumping
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

config.hide_tab_bar_if_only_one_tab = true

-- This is where you actually apply your config choices
config.font_size = 12.0
config.line_height = 1.4
-- config.font = wezterm.font("SauceCodePro Nerd Font Mono", { weight = "Regular" })
-- config.font = wezterm.font("MonaspiceAr Nerd Font", { weight = "Medium" })
-- config.font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Regular" })
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })

config.audible_bell = "Disabled"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- For example, changing the color scheme:
-- config.color_scheme = "Dracula"
config.color_scheme = "Catppuccin Mocha"

-- and finally, return the configuration to wezterm
return config
