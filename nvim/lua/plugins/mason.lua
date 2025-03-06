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
        "pylint",
        -- Formatters
        "prettier",
        "dcm",
        "stylua",
        "black",
        "isort",
        "rustfmt",
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
