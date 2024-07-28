return {
  "folke/twilight.nvim",
  event = "VeryLazy",
  opts = {
    {
      dimming = {
        alpha = 0.25,
        color = { "Normal", "#ffffff" },
        inactive = false,
      },
      context = 10,
      treesitter = true,
      expand = { "function", "method", "table", "if_statement" },
      exclude = {},
    },
  },
}
