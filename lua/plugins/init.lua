return {
  {
    "neovim/nvim-lspconfig",
     config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
     end,
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
        "markdown",
        "go",
        "rust"
      }
  	},
  },
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
    config = function()
      require "configs.conform"
    end,
  },
  {
    "max397574/colortils.nvim",
    cmd = "Colortils",
    config = function()
      require("colortils").setup()
    end
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
