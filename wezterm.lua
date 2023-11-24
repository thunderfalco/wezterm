-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action
-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
--
config.keys = {
	{ key = "F9", mods = "ALT", action = wezterm.action.ShowTabNavigator },
}

-- For example, changing the color scheme:
config.color_scheme = "tokyonight"
config.line_height = 1.1
config.cell_width = 1.0
config.initial_rows = 50
config.initial_cols = 180
config.font_size = 15.5
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold" })
config.max_fps = 140
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.7

config.macos_window_background_blur = 50
config.text_background_opacity = 1.0
config.window_padding = {
	left = 20,
	right = 20,
	top = 12,
	bottom = 12,
}
config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 1.0,
}
config.tab_bar_at_bottom = true
config.window_decorations = "NONE"
-- wezterm.on("update-right-status", function(window, pane)
-- 	window:set_right_status(window:active_workspace())
-- end)

config.keys = {
	{ key = "1", mods = "CTRL|CMD", action = act.ActivatePaneByIndex(0) },
	{ key = "2", mods = "CTRL|CMD", action = act.ActivatePaneByIndex(1) },
	{ key = "3", mods = "CTRL|CMD", action = act.ActivatePaneByIndex(2) },
	{ key = "4", mods = "CTRL|CMD", action = act.ActivatePaneByIndex(3) },
	{ key = "1", mods = "CTRL", action = act.ActivateTab(0) },
	{ key = "2", mods = "CTRL", action = act.ActivateTab(1) },
	{ key = "3", mods = "CTRL", action = act.ActivateTab(2) },
	{ key = "4", mods = "CTRL", action = act.ActivateTab(3) },
}

-- wezterm.on("update-right-status", function(window, pane)
-- 	window:set_left_status("left")
-- 	window:set_right_status("right")
-- end)

-- config tab style
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = true
config.show_new_tab_button_in_tab_bar = false
-- tab style

-- and finally, return the configuration to wezterm
return config
