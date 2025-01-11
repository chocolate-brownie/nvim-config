return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css",
        "c", "cpp"
      },
    },
  },

  -- Mason 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
      }
    }
  },

  -- c_formatter_42.vim plugin
  {
    "cacharle/c_formatter_42.vim",
    ft = { "c"},
    config = function()
    end,
  },

  -- 42header plugin
  {
    "42Paris/42header",
    ft = { "c", "cpp" },
    config = function()
    end,
  },
}
