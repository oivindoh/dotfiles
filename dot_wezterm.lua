-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28
--config.use_ime = true
-- necessary for correct ~ on norwegian mac layout when setting send_composed_key_when_left_alt_is_pressed
config.use_dead_keys = false
-- necessary for []{}| on norwegian mac layouts
config.send_composed_key_when_left_alt_is_pressed = true

-- or, changing the font size and color scheme.
config.font_size = 13
--config.color_scheme = 'AdventureTime'
--config.color_scheme = 'Hardcore (Gogh)'
config.color_scheme = 'nord'
config.window_decorations = "RESIZE"

-- Finally, return the configuration to wezterm:
return config

