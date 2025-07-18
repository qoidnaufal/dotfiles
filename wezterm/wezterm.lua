local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-startup', function(window)
  local _, _, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:maximize()
end)

local config = wezterm.config_builder()

config.color_scheme = 'GruvboxDark'
config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.default_prog = { '/Users/qoidnaufal/.cargo/bin/nu' }
-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 20

config.keys = {
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- {
  --   key = 'l',
  --   mods = 'CTRL|SHIFT',
  --   action = wezterm.action.SplitPane {
  --     direction = 'Right'
  --   }
  -- },
  -- {
  --   key = 'h',
  --   mods = 'CTRL|SHIFT',
  --   action = wezterm.action.SplitPane {
  --     direction = 'Left'
  --   }
  -- },
  -- {
  --   key = 'k',
  --   mods = 'CTRL|SHIFT',
  --   action = wezterm.action.SplitPane {
  --     direction = 'Up'
  --   }
  -- },
  -- {
  --   key = 'j',
  --   mods = 'CTRL|SHIFT',
  --   action = wezterm.action.SplitPane {
  --     direction = 'Down'
  --   }
  -- },
  -- {
  --   key = 'l',
  --   mods = 'CTRL',
  --   action = wezterm.action.ActivatePaneDirection 'Right'
  -- },
  -- {
  --   key = 'h',
  --   mods = 'CTRL',
  --   action = wezterm.action.ActivatePaneDirection 'Left'
  -- },
  -- {
  --   key = 'k',
  --   mods = 'CTRL',
  --   action = wezterm.action.ActivatePaneDirection 'Up'
  -- },
  -- {
  --   key = 'j',
  --   mods = 'CTRL',
  --   action = wezterm.action.ActivatePaneDirection 'Down'
  -- },
}

return config
