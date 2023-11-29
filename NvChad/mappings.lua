---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "move half page" },
    ["<C-u>"] = { "<C-u>zz", "move half page" },
    ["<leader>yd"] = {":let @+=@%<CR>", "copy current buffer dir to clipboard"}
  }
}

M.telescope = {
  n = {
    -- find
    ["<leader>pf"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>pa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
    ["<leader>ps"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>ph"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>pd"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    ["<leader>po"] = { "<cmd> Telescope lsp_document_symbols <CR>", "find document symbols" },

    -- theme switcher
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvchad themes" },
    ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "find keymaps" },
    ["<leader>pw"] = { "<cmd> Telescope workspaces <CR>", "find workspaces" },
    ["<leader>pb"] = { "<cmd> Telescope git_branches <CR>", "find branches" },
    ["<F9>"] = { "<cmd> cp <CR>", "find branches" },
  },
}

M.fzf = {
  n = {
    ["<leader>ff"] = { "<cmd> FzfLua files git_icons=false <CR>", "find files" },
    ["<leader>fs"] = { "<cmd> FzfLua live_grep git_icons=false <CR>", "live grep" },
  }
}

M.symbolsoutline = {
  n = {
    ["<leader>so"] = { "<cmd> SymbolsOutline <CR>", "view document symbols" }
  }
}

M.lspconfig = {
  n = {
    ["<leader>vd"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "floating diagnostic",
    },

  }
}

M.fugitive = {
  n = {
    ["<F8>"] = {":G <CR>", "open fugitive status"},
    ["<leader>gfh"] = {":G log --pretty=format:'%Cred%h%Creset %m %s (%Cgreen%ce%Creset)' -- %<CR>", "Open file history"},
  }
}

M.gitsigns = {
  n = {
    ["<leader>tb"] = { "<cmd> Gitsigns toggle_current_line_blame<CR>"},
    ["<leader>sh"] = { "<cmd> Gitsigns stage_hunk<CR>"}
  }
}

M.dap = {
  n = {
    ["<leader>bt"] = {":lua require'dap'.toggle_breakpoint()<CR>", "Toggle breakpoint"},
    ["<F5>"] = {":lua require'dap'.continue()<CR>", "Resume execution"},
    ["<F6"] = {":lua require'dap'.step_into()<CR>", "Next step"},
    ["<leader>ri"] = {":lua require'dap'.repl.open()<CR>", "Open REPL"},
    ["<leader>dt"] = {":lua require'dapui'.toggle()<CR>", "Toggle DAP UI"}
  }
}

M.dogedocs = {
  n = {
    ["<leader>gc"] = { "<cmd> DogeGenerate<CR>", "Generate docstring"},
  }
}

M.oil = {
  n = {
    ["-"] = { "<cmd> Oil<CR>", "Open oil docstring"},
  }
}

M.neorg = {
  n = {
    ["<leader>jl"] = { "<cmd> Neorg journal toc<CR>", "Show all journal entries"},
    ["<leader>jt"] = { "<cmd> Neorg journal today<CR>", "Check today journal"},
    ["<leader>jp"] = { "<cmd> Neorg journal tomorrow<CR>", "Check tomorrow journal"},
  }
}

M.autosession = {
  n = {
    ["<leader>S"] = { "<cmd> SessionSave <CR>", "Save session" },
  }
}

return M
