-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:

config.default_domain = 'WSL:Ubuntu'
config.use_fancy_tab_bar = false
config.enable_tab_bar = false
config.initial_cols = 120
config.initial_rows = 30
config.window_padding = {
    left = 15,
    right = 15,
    top = 15,
    bottom = 15,
}
config.window_background_opacity = 0.80
-- config.window_decorations = 'RESIZE'

-- Keybindings
config.keys = {
  -- Vertical split with CTRL+SHIFT+ALT+' (single quote key)
  {
    key = "'",
    mods = "CTRL",
    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" },
  },
  -- Horizontal split with CTRL+SHIFT+ALT+- (dash key)
  {
    key = "-",
    mods = "CTRL",
    action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" },
  },
  -- Clipboard copy (CTRL+SHIFT+C)
  {
    key = "c",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CopyTo "Clipboard",
  },
  -- Clipboard paste (CTRL+SHIFT+V)
  {
    key = "v",
    mods = "CTRL|SHIFT",
    action = wezterm.action.PasteFrom "Clipboard",
  },
  -- Close current pane (CTRL+SHIFT+W)
  {
    key = "w",
    mods = "CTRL|SHIFT",
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}


-- or, changing the font size and color scheme.
config.font_size = 12
-- config.color_scheme = 'Catppuccin Mocha'
config.color_scheme = '0x96f'
config.font = wezterm.font('JetBrains Mono', { weight = 'Bold' })

-- Finally, return the configuration to wezterm:
return config
