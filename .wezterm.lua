local wezterm = require "wezterm"

return {
  font = wezterm.font "JetbrainsMono Nerd Font",
  font_size = 13,
  color_scheme = "kanagawabones",
  keys = {
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action.DisableDefaultAssignment,
    }
  },
  window_background_opacity = .95,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
  scrollback_lines = 5000,
}
