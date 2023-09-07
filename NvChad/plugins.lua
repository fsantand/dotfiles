local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

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
    opts = overrides.mason
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
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
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
    lazy = false,
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },

    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },

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
    "direnv/direnv.vim",
    lazy = false,
  },
  {
    "ibhagwan/fzf-lua",
    lazy = false,
    config =  function ()
      require("fzf-lua").setup{"telescope", winopts={preview={default="bat"}}}
    end
  },
  {
    "nvim-treesitter/playground",
    lazy=false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter"
    },
    config = function ()
      require "nvim-treesitter.configs".setup{}
    end
  },
  {
    "j-hui/fidget.nvim",
    lazy=false,
    dependencies={
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("fidget").setup{}
    end
  },
  -- Debugger
  {
    "mfussenegger/nvim-dap",
    lazy=false
  },
  {
    "rcarriga/nvim-dap-ui",
    lazy=false,
    dependencies={
      "mfussenegger/nvim-dap"
    },
    config = function ()
      require "custom.configs.dap-ui"
    end
  },
  {
    "leoluz/nvim-dap-go",
    lazy=false,
    dependencies={
      "mfussenegger/nvim-dap"
    },
    config = function ()
      require "custom.configs.dap-go"
    end
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    lazy=false,
    dependencies={
      "mfussenegger/nvim-dap"
    }
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    lazy=false,
    dependencies={
      "mfussenegger/nvim-dap",
      "nvim-telescope/telescope.nvim"
    }
  },
}

return plugins
