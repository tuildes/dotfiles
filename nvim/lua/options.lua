require "nvchad.options"

local o = vim.o
local g = vim.g
local opt = vim.opt

-- Identation options
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true
o.smartindent = true
g.autoformat = true

-- Another configs
opt.fileformats = "unix"
opt.fileformat = "unix"
