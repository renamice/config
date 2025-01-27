vim.g.mapleader = " "

local map = vim.keymap.set
-- File tree
map("n", "<leader>pv", vim.cmd.Ex)

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
