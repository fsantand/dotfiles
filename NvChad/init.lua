-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.mouse = ""
vim.o.guifont = "FantasqueSansMono_Nerd_Font_Mono"

if vim.g.neovide then
  vim.opt.linespace = 0
  vim.g.neovide_refresh_rate = 165
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
