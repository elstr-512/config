require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "<C-c>", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr><ESC>", { desc = "save" })

-- Move lines up and down
map("n", "<A-k>", ":m .-2<CR>==") -- move line up
map("n", "<A-j>", ":m .+1<CR>==") -- move line down

map("n", "<A-Up>", ":m .-2<CR>==") -- move line up
map("n", "<A-Down>", ":m .+1<CR>==") -- move line down

map("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move block up
map("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move block down

map("v", "<A-Up>", ":m '<-2<CR>gv=gv") -- move block up
map("v", "<A-Down>", ":m '>+1<CR>gv=gv") -- move block down

-- search, keep curor in middle while moving
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
