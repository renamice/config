require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

map({ "n", "i", "v" }, "zm", "<cmd> ZenMode <cr>")

local M = {}

return M
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
