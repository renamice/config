return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- LSPs
        "clangd",
        "lua_ls",
        "rust_analyzer",
        "dcm",
        -- Linters
        -- Formatters
        "prettier",
        "stylua",
      },
    },
    config = function()
      require("mason").setup()
    end,

  },
}
