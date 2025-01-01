-- require "nvchad.mappings"
-- local map = vim.keymap.set

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-------- [[ My Keymaps [ee] ]] ---------

-- CTRL+S save
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', '<cmd> w <cr><ESC>', { desc = 'Save' })

-- Search, keep cursor in middle while moving
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- nvimtree
vim.keymap.set('n', '\\', '<cmd>NvimTreeToggle<CR>', { desc = 'nvimtree toggle window' })

-- Move lines up and down
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==') -- move line up
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==') -- move line down

vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==') -- move line up
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==') -- move line down

vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv") -- move block up
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv") -- move block down

vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv") -- move block up
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv") -- move block down

vim.keymap.set('n', 'Q', '<nop>')

vim.keymap.set('n', '<leader>rt', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Vim: [R]ename [t]his word' })
