local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "go",
    "python",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
  injections = {
    module_path = "custom.queries"
  },

  auto_install = true,
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    "gopls",
    "pyright",
    "emmet-ls"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    group_empty = true,
    highlight_git = true,
    icons = {
      glyphs = {
        folder = {
          default = "󰉋"
        }
      },
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  extensions_list = { "workspaces", "themes" },
  extensions = {
    workspaces = {
      keep_insert = false,
    }
  }
}

return M
