local wezterm = require "wezterm"

return {
    font = wezterm.font "FantasqueSansMono Nerd Font Mono",
    font_size = 14,
    color_scheme = "kanagawabones",
    keys = {
        {
            key = "k",
            mods = "CTRL|SHIFT",
            action = wezterm.action.DisableDefaultAssignment,
        }
    },
    use_fancy_tab_bar = false,
    window_background_opacity = .90,
    hide_tab_bar_if_only_one_tab = true,
}
