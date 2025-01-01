vim.g.base46_cache = vim.fn.stdpath 'data' .. '/base46/'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- load plugins
require('lazy').setup {
  spec = {
    { import = 'plugins' },

    {
      -- NOTE: Installing the necessary packages for the NvChad UI
      lazy = false,
      import = 'nvchad.plugins',
    },
  },

  install = { colorscheme = { 'nvchad' } },

  ui = {
    icons = {
      ft = '',
      lazy = '󰂠 ',
      loaded = '',
      not_loaded = '',
    },
  },
}

-- load theme
dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')

require 'options'
require 'autocmds'

vim.schedule(function()
  require 'mappings'
end)
