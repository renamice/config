return {
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
        "rust-analyzer",
        "codelldb",
        "debugpy",
        "clangd",
        "clang-format",
        "codelldb",
        "isort",
        "black",
        "basedpyright",
      },
    },
  },
}
