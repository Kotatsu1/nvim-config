local servers = {
  "lua-language-server",
  "typescript-language-server",
  "stylua",
  "html-lsp",
  "css-lsp",
  "prettier",
  "gopls",
  "prismals",
  "clangd",
  "pyright",
  "rust-analyzer"
}

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = servers,
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = servers,
        automatic_installation = true,
      }

      local lspconfig = require("lspconfig")
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {}
      end
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {}
      end
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
