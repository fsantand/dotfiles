local wezterm = require "wezterm"

return {
  font = wezterm.font "JetBrains Mono",
  font_size = 12,
  color_scheme = 'DoomOne',
  keys = {
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action.DisableDefaultAssignment,
    },
    {
      key = "Enter",
      mods = "ALT",
      action = wezterm.action.DisableDefaultAssignment,
    },
    {
      key = "Enter",
      mods = "CTRL|SHIFT|ALT",
      action = wezterm.action.ToggleFullScreen,
    }
  },
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
  scrollback_lines = 5000,
}
