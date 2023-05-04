---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz", "move half page" },
    ["<C-u>"] = { "<C-u>zz", "move half page" },
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
  },
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

return M
