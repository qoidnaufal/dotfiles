local wezterm = require 'wezterm'
local mux = wezterm.mux

wezterm.on('gui-attached', function(domain)
  local workspace = mux.get_active_workspace()
  for _, window in ipairs(mux.all_windows()) do
    if window:get_workspace() == workspace then
      window:gui_window() :maximize()
    end
  end
end)

local config = wezterm.config_builder()

config.color_scheme = 'Gruvbox dark, pale (base16)'
config.font = wezterm.font 'Hack Nerd Font'
-- config.default_prog = { '/Users/qoidnaufal/.cargo/bin/nu', '-l' }
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.87

config.keys = {
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
  -- split the pane: ctrl + alt[option] + hjkl
  {
    key = 'l',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Right'
    }
  },
  {
    key = 'h',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Left'
    }
  },
  {
    key = 'k',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Up'
    }
  },
  {
    key = 'j',
    mods = 'CTRL|ALT',
    action = wezterm.action.SplitPane {
      direction = 'Down'
    }
  },
  -- navigate between pane: alt[option] + hjkl
  {
    key = 'l',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Right'
  },
  {
    key = 'h',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Left'
  },
  {
    key = 'k',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Up'
  },
  {
    key = 'j',
    mods = 'ALT',
    action = wezterm.action.ActivatePaneDirection 'Down'
  },
}

return config

