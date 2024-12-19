require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "<C-c>", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr><ESC>", { desc = "save" })
map("n", "<C-c>", "i")

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    -- change size of floatTerm
    float_opts = {
      row = 0.05,
      col = 0.05,
      width = 0.87,
      height = 0.78,
    },
  }
end, { desc = "terminal toggle floating term" })

map("n", "<leader>fd", "<cmd> Nvdash <cr>", { desc = "Nvdash" })

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
