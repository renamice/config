return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local map = vim.keymap.set
    local builtin = require("telescope.builtin")
    map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    map("n", "<C-p>", builtin.git_files, { desc = "Telescope git files" })
    map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
    map("n", "<leader>ds", builtin.lsp_document_symbols, { desc = "Components within a file" })
    map("n", "<leader>gd", function()
      -- for some reason can"t pass parameter to the following stuff without wraping it within this anon function
      builtin.lsp_definitions({ jump_type = "vsplit" })
    end, { desc = "Goto documentation" })
    map("n", "<leader>dl", builtin.diagnostics, { desc = "Diagnosis for all files" })
  end,
}
