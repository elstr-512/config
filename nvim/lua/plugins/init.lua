return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require("configs.conform"),
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("configs.lspconfig")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -------- defaults --------
        "lua",
        "luadoc",
        "printf",
        "vim",
        "vimdoc",
        -------- other --------
        "cpp",
        "bash",
        "json",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "asm",
      },
    },
  },
}
