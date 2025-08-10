return {
  "nvim-flutter/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    require("flutter-tools").setup {
      ui = {
        border = "single",
      },
      decorations = {
        statusline = {
          -- this will show the current version of the flutter app from the pubspec.yaml file
          app_version = true,
          -- this will show the currently running device if an application was started with a specific
          -- device
          device = true,
          -- this will show the currently selected project configuration
          project_config = false,
        }
      },
      fvm = false,
    }

  end,
}
