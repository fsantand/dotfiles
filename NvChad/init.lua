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
  vim.opt.nu = true
  vim.opt.rnu = true
  vim.g.neovide_refresh_rate = 165
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_animation_length = 0.03
  vim.g.neovide_input_macos_alt_is_meta = true
end

local goFormatImports = function(wait_ms)
  -- Prefer `format` if available because `formatting_sync` has been deprecated as of nvim v0.8.0.
  if vim.lsp.buf.format == nil then
        vim.lsp.buf.formatting_sync(nil, wait_ms)
    else
        vim.lsp.buf.format({
            timeout_ms = wait_ms,
        })
    end
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
    for _, res in pairs(result or {}) do
        for _, r in pairs(res.result or {}) do
            if r.edit then
                vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
            else
                vim.lsp.buf.execute_command(r.command)
            end
        end
    end
end

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function(_)
        goFormatImports(3000)
    end,
})
