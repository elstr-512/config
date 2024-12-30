require("nvchad.options")

local opt = vim.opt
local o = vim.o
local g = vim.g

-------------------------------------- options ------------------------------------------

o.cursorlineopt = "both" -- to enable cursorline!
o.spelllang = "en_us"
o.scrolloff = 10

-- Indenting
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4

-- editor config
g.editorconfig = true
