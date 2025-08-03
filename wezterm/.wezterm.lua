local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.set_environment_variables = {
  WEZTERM_SHOW_HIDDEN_FILES = "1"
}

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

-- config.colors = {
-- 	foreground = "#CBE0F0",
-- 	background = "#011423",
-- 	cursor_bg = "#47FF9C",
-- 	cursor_border = "#47FF9C",
-- 	cursor_fg = "#011423",
-- 	selection_bg = "#033259",
-- 	selection_fg = "#CBE0F0",
-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- }

config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.6
config.macos_window_background_blur = 10

config.keys = {
  {
    key = 'n',
    mods = 'SHIFT|CTRL',
    action = wezterm.action.ToggleFullScreen,
  },
}

return config
