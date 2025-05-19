local map = vim.keymap.set

-- ; as :
map("n", ";", ":")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
map("n", "<Esc>", "<cmd>nohlsearch<CR>")
map("n", "ya", "<cmd>Yazi<CR>", { desc = "Open [ya]zi" })

-- Diagnostic keymaps
map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
map("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Open diagnostics in flost" })

-- Exit terminal mode in the builtin terminal with a shortcut
map("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Easy splits
map("n", "<leader>l", vim.cmd.vsplit)
map("n", "<leader>j", vim.cmd.split)

-- Easier split navigation
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-l>", ":wincmd l<CR>")

-- Moving split panes
map("n", "<A-k>", ":wincmd K<CR>")
map("n", "<A-j>", ":wincmd J<CR>")
map("n", "<A-h>", ":wincmd H<CR>")
map("n", "<A-l>", ":wincmd L<CR>")

-- Easier pane resizing
map("n", "=", [[<cmd>vertical resize +5<cr>]])
map("n", "-", [[<cmd>vertical resize -5<cr>]])
map("n", "+", [[<cmd>horizontal resize +2<cr>]])
map("n", "_", [[<cmd>horizontal resize -2<cr>]])

-- Toggle linenumber
map("n", "<leader>ln", function()
  vim.wo.number = not vim.wo.number
end)

-- Toggle relativenumber
map("n", "<leader>rn", function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end)

-- Easy todo
map("n", "fl", ":Td<CR>", { silent = true, desc = "Open [F]loating todo [L]ist" })
