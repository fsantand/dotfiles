local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "typescript", "javascript" } }, -- so prettier works only on these filetypes
  -- Lua
  b.formatting.stylua,
  -- spellcheck
  b.diagnostics.cspell,
  b.code_actions.cspell
}

null_ls.setup {
  debug = true,
  sources = sources,
}
