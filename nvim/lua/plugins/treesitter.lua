return {
  "nvim-treesitter/nvim-treesitter",
  require("nvim-treesitter").setup {
    "c",
    "rust",
    "python",
  },
  auto_install = false,
}
