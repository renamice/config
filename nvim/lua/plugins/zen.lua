return {
  "folke/zen-mode.nvim",
  event = "VeryLazy",
  opts = {
    window = {
      backdrop = 0.95,
      width = 150,
      height = 0.9,
      options = {
        signcolumn = "no",
        relativenumber = false,
        number = false,
        cursorcolumn = false,
        cursorline = false,
        list = false,
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 0,
      },
      twilight = { enabled = true },
      tmux = { enabled = true },
    },
  },
}
