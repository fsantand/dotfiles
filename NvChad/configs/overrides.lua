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

M.neorg = {
  load = {
    ["core.defaults"] = {}, -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.pivot"] = {}, -- Toggle lists
    ["core.itero"] = {}, -- Listssss
    ["core.looking-glass"] = {}, -- Listssss
    ["core.promo"] = {}, -- Listssss
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        default_workspace="work",
        workspaces = {
          work = "~/notes/work",
          home = "~/notes/home",
        },
      },
    },
  }
}

M.cmp = {
  completion = {
    completeopt = "menu,menuone,noinsert",
  },
}

M.oil = {
  keymaps = {
    ["<C-h>"] = "",
    ["<C-v>"] = "actions.select_vsplit",
    ["<C-s>"] = "actions.select_split",
  },
  view_options = {
    show_hidden = true,
  }
}

return M
