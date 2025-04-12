return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSPs
        "clangd",
        "lua_ls",
        "rust_analyzer",
        "html",
        "cssls",
        "svelte",
        "emmet_ls",
        -- Linters
        "eslint_d",
        "golangci-lint",
        "pylint",
        -- Formatters
        "prettier",
        "dcm",
        "stylua",
        "black",
        "isort",
        "rustfmt",
        "gofumpt",
        -- DAP
        "dart-debug-adapter",
      },
      automatic_installation = true,
    },

    config = function()
      require("mason").setup()
    end,
  },
}
