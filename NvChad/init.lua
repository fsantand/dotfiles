-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.mouse = ""
vim.o.guifont = "JetBrainsMono_Nerd_Font_Propo"


if vim.g.neovide then
  vim.api.nvim_exec ('language en_US', true)
  vim.opt.linespace = -1
  vim.g.neovide_refresh_rate = 165
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_input_macos_alt_is_meta = true
end
