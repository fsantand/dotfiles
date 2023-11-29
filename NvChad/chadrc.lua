---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "doomchad",
  theme_toggle = { "doomchad", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  tabufline = {
    enabled = false
  },
  statusline = {
    theme = "default",
    separator_style = "arrow",
  },
  transparency = true,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M

