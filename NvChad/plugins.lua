local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
    cmd = "Mason",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "syntax")
      require("nvim-treesitter.configs").setup(opts)
    end
  },

  {
   "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
    enabled = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
    cmd = "Telescope",
  },
  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "tpope/vim-surround",
    lazy = false
  },

  {
    "tpope/vim-fugitive",
    lazy = false
  },

  {
    "simrat39/symbols-outline.nvim",
    config = function()
      require("symbols-outline").setup({
        autofold_depth = 1
      })
    end,
    lazy = false
  },

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    -- lazy = false,
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
    },
    event = "BufRead",
  },

  {
    "NvChad/nvterm",
    enabled = false
  },

  {
    "natecraddock/workspaces.nvim",
    lazy = false,
    config = function ()
      require("workspaces").setup()
    end
  },

  {
    "ibhagwan/fzf-lua",
    config =  function ()
      require("fzf-lua").setup{"telescope", winopts={preview={default="bat"}}}
    end,
    cmd = "FzfLua"
  },

  {
    "mfussenegger/nvim-dap",
  },

  {
    "leoluz/nvim-dap-go",
    dependencies={
      "mfussenegger/nvim-dap"
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies={
      "mfussenegger/nvim-dap"
    },
    config = function ()
      require "custom.configs.dap-config"
    end,
    keys = {
      { "<leader>bt", "<F5>", "<leader>dt" }
    }

  },

  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies={
      "mfussenegger/nvim-dap"
    }
  },

  {
    "nvim-telescope/telescope-dap.nvim",
    dependencies={
      "mfussenegger/nvim-dap",
      "nvim-telescope/telescope.nvim"
    }
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
  },

  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = overrides.neorg,
    dependencies={
      "nvim-lua/plenary.nvim",
    },
    cmd = "Neorg"
  },

  {
    "kkoomen/vim-doge",
    event = "BufRead",
    config = function()
      vim.cmd([[call doge#install()]])
    end
  },

  {
    'stevearc/oil.nvim',
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = overrides.oil,
    -- config = function()
    --   require'oil'.setup()
    -- end
  },

  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    opts = overrides.autosession
  },
  {
    'pwntester/octo.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    opts = overrides.octo,
    cmd = "Octo"
  }
}

return plugins
