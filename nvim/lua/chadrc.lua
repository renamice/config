-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.nvdash = {
  load_on_startup = true,
  header = {
    "⠀ ⠀⠀⠀⠀⠀⡀⠄⠒⠒⠀⠐⠒⠢⠤⣄⡀⠀⠀⠀⠀⠀⠀",
    " ⠀⠀⠴⡢⠀⠀⠤⠀⠐⢠⠄⠀⠠⡤⠀⠈⠒⠒⡢⡀⠀⠀⠀",
    "⠀⠀⠀⠃⡘⠀⠀⣀⣡⣤⣤⣤⣦⣤⣤⣈⡄⠀⠀⠈⠀⡇⠀⠀",
    "⠀⠀⠀⢲⢀⣴⠾⠟⠛⠉⡉⠉⡉⠉⣩⠛⠛⠷⣄⠀⡏⠀⠀⠀",
    "⠀⠀⠀⠈⡘⠁⡅⡆⠀⢠⢁⠀⣇⠈⢹⡍⠀⠀⢈⡆⡇⠀⠀⠀",
    "⠀ ⠀⢠⠇⣧⡷⢡⢄⡄⠂⠂⠃⠈⡽⣭⢢⠐⡀⢈⡇⠀⠀⠀",
    "   ⠀⢸⡘⡂⠀⠁⠁⠀⠀⠀⠀⠉⠁⢸⠠⣿⡎⠇⠀⠀⠀",
    " ⠀ ⢠⠀⡟⠿⠢⢀⠀⠀⠀⠄⠀⢀⡠⡯⠝⠙⠀⢸⠀⠀⠀",
    " ⠀⠀⠸⡀⢁⡀⠀⡀⠉⠋⣤⢢⠅⠉⠄⡛⠀⡠⢡⠊⠀⠀⠀",
    "⠀⠀⠀⠀⠸⠑⠂⠌⠒⠂⠐⠙⡀⠁⠈⠙⠐⠂⠂⢸⠀⠀⠀⠀",
    "⠀⠀⠀⢀⠗⠂⠀⠠⠀⠀⠀⠈⠀⠀⠀⠀⠄⢊⠀⠀⡆⠀⠀⠀",
    "⠀⠀⠀⠣⠤⠤⠂⢊⠀⠠⠄⠀⠀⠀⠀⠀⢀⠀⠦⠤⠇⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠠⠤⠤⠤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  },
}

M.base46 = {
  theme = "gruvbox",

  hl_override = {
    NvDashAscii = {
      bg = "none",
      fg = "blue",
    },
    NvDashButtons = {
      bg = "none",
      fg = "light_grey",
    },
  },
}

return M
