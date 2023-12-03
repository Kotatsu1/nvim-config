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
    -- opts = overrides.mason
    opts = {
      ensure_installed = {
        "prismals"
      }
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python",
        "prisma",
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "c"
      }
    }
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "zoriya/auto-save.nvim",
    event = { "BufReadPost" },
    opts = {
      trigger_events = {"InsertLeave", "TextChanged", "TextChangedI"}
    }
  },
  {
    "lambdalisue/suda.vim",
    enabled = true,
    cmd = {
      "SudaRead",
      "SudaWrite",
    },
  },
  {
    'akinsho/toggleterm.nvim',
    cmd = { "ToggleTerm", "TermExec" },
    event = "VimEnter",
    opts = {
      open_mapping = [[\]],
      direction = "float"
    }
  },
  {
    "rcarriga/nvim-notify"
  }
}

return plugins
