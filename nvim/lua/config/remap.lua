vim.g.mapleader = " "

local map = vim.keymap.set

-- File tree
map("n", "<leader>pv", function()
  vim.api.nvim_command("w") -- otherwise netrw will not open files saying "haven't saved buffer" or sth
  vim.cmd.Ex()
end)

map("n", "<Esc>", vim.cmd.nohlsearch)
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<Esc>")
map("i", "JK", "<Esc>")

-- Split
map("n", "<leader>l", vim.cmd.vsplit)
map("n", "<leader>j", vim.cmd.split)

-- Navigate vim panes better
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-l>", ":wincmd l<CR>")

map("n", "=", [[<cmd>vertical resize +5<cr>]])
map("n", "-", [[<cmd>vertical resize -5<cr>]])
map("n", "+", [[<cmd>horizontal resize +2<cr>]])
map("n", "_", [[<cmd>horizontal resize -2<cr>]])

map("n", "rn", function()
  vim.wo.relativenumber = not vim.wo.relativenumber
end
)

local opts = { noremap = true, silent = true }

map("i", "<C-h>", "<Left>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-k>", "<Up>", opts)
map("i", "<C-l>", "<Right>", opts)
map("i", "<C-e>", "<C-Left>", opts)
map("i", "<C-b>", "<C-Right>", opts)
map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)

-- Terminal
map("t", "<C-q>", [[<C-\><C-n>]], { noremap = true, silent = true })
map("n", "<leader>st", function()
  vim.cmd("cd %:p:h")
  vim.cmd.vnew()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 9)
  vim.cmd("terminal")
  vim.cmd("startinsert")
end)

-- Editor
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })
map("v", "<C-c>", '"+y', { desc = "Easy copy" })
