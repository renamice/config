vim.g.mapleader = " "

local map = vim.keymap.set

-- File tree
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.wo.relativenumber = true
  end,
})
map("n", "<leader>pv", vim.cmd.Ex)

map("n", "<Esc>", vim.cmd.nohlsearch)
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<Esc>")
map("i", "JK", "<Esc>")

-- Split
map("n", "<leader>l", vim.cmd.vsplit)
map("n", "<leader>j", vim.cmd.split)
--map("n", "<leader>j", vim.cmd.split)

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
-- Navigate  in inser t mode
vim.keymap.set("i", "<C-h>", "<C-o>h", opts)
vim.keymap.set("i", "<C-j>", "<C-o>j", opts)
vim.keymap.set("i", "<C-k>", "<C-o>k", opts)
vim.keymap.set("i", "<C-l>", "<C-o>a", opts)
vim.keymap.set("i", "<C-e>", "<C-o>e", opts)
vim.keymap.set("i", "<C-b>", "<C-o>b", opts)

-- Terminal
vim.keymap.set("t", "<C-q>", [[<C-\><C-n>]], { noremap = true, silent = true })
map("n", "<space>st", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 9)
  vim.cmd.startinsert()
end)

-- Netrw
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, { remap = true, buffer = true })
    end

    -- edit new file
    bind('n', '%')

    -- rename file
    bind('r', 'R')
  end
})
