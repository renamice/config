require "nvchad.options"

-- add yours here!

local wo = vim.wo
wo.relativenumber = true

local g = vim.g
g.tmux_navigator_save_on_switch = 1
g.tmux_navigator_disable_when_zoomed = 1

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.tabstop = 4
o.expandtab = true
o.softtabstop = 4
o.shiftwidth = 4
