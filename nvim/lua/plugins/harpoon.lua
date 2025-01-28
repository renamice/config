return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon").setup()
    local map = vim.keymap.set

    map("n", "<leader>a", function() harpoon:list():add() end)
    map("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    map("n", "<M-1>", function() harpoon:list():select(1) end)
    map("n", "<M-2>", function() harpoon:list():select(2) end)
    map("n", "<M-3>", function() harpoon:list():select(3) end)
    map("n", "<M-4>", function() harpoon:list():select(4) end)
  end
}
