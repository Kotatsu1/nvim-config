return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        custom = {
          "__pycache__"
        }
      }
    }
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = {
      "InsertLeave",
      "TextChanged"
    },
    opts = {
      debounce_delay = 100
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server",
        "stylua",
  			"html-lsp",
        "css-lsp",
        "prettier",
        "gopls"
  		},
  	},
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
        "c",
        "go",
        "markdown",
        "go"
      }
  	},
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
