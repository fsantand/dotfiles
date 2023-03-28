local wezterm = require "wezterm"

return {
    font = wezterm.font "FantasqueSansMono Nerd Font Mono",
    font_size = 14,
    color_scheme = "TokyoNight Storm",
    keys = {
        {
            key = "k",
            mods = "CTRL|SHIFT",
            action = wezterm.action.DisableDefaultAssignment,
        }
    }
}
