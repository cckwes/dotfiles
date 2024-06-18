-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.keys = {
  -- For word jumping
  { key = "LeftArrow",  mods = "OPT", action = wezterm.action { SendString = "\x1bb" } },
  { key = "RightArrow", mods = "OPT", action = wezterm.action { SendString = "\x1bf" } }
}

config.hide_tab_bar_if_only_one_tab = true

-- This is where you actually apply your config choices
config.font_size = 10.0
config.line_height = 1.3

config.audible_bell = "Disabled"

-- For example, changing the color scheme:
config.color_scheme = "Dracula"

-- and finally, return the configuration to wezterm
return config
