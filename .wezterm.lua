local wezterm = require "wezterm"

return {
  font = wezterm.font "JetBrains Mono",
  font_size = 12,
  color_scheme = "kanagawabones",
  keys = {
    {
      key = "k",
      mods = "CTRL|SHIFT",
      action = wezterm.action.DisableDefaultAssignment,
    }
  },
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
  scrollback_lines = 5000,
}
